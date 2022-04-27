import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:study_map/widgets/expandable_vertical_fab_menu.dart';
import 'package:study_map/data_architecture/events.dart';

//Class declaration for the Map screen
class StudyMap extends StatefulWidget {
  const StudyMap({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

//Class that represents the Map state. Since the map needs to be dynamic it has
//to be rebuit on every load of the Map screen.

class _MapScreenState extends State<StudyMap> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);

  //To be deleted
  static const _actionTitles = ['Create Post', 'Upload Photo', 'Upload Video'];

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  //Place holder for onPress
  void _showAction(BuildContext context, int index) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(_actionTitles[index]),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('CLOSE'),
            ),
          ],
        );
      },
    );
  }

  //build is teh function that gets called when a screen is shown and is where
  // all of the UI for a screen should be defined.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Was hiding the profile button
      theme: Theme.of(context),
      //Home is the default state of a screen, and a scaffold stacks elements of
      //UI
      home: Scaffold(
        //App bar is the bar accross the top of the Map
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
          actions: <Widget>[
            //Account Button
            Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: ActionButton(
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                  icon: const Icon(Icons.account_circle),
                  primaryColor: Colors.blue,
                  secondaryColor: Colors.white,
                )),
          ],
        ),

        //Main Map area of the screen
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          zoomControlsEnabled: false,
        ),

        // Menu button in the bottom right, might be moved later. This is its
        // own custom design and can be found in lib/widgets
        floatingActionButton: VerticalExpandableFab(
          distance: 112.0,
          children: [
            //Search Button:
            ActionButton(
              onPressed: () => _showAction(context, 0),
              icon: const Icon(Icons.search),
              primaryColor: Colors.blue,
              secondaryColor: Colors.white,
            ),
            //Add-Event Button:
            ActionButton(
              onPressed: () => Navigator.pushNamed(context, '/group'),
              icon: const Icon(Icons.add),
              primaryColor: Colors.blue,
              secondaryColor: Colors.white,
            ),
            //Calendar Button (WIP):
            ActionButton(
              onPressed: () => Navigator.pushNamed(context, '/calendar'),
              icon: const Icon(Icons.calendar_today_rounded),
              primaryColor: Colors.blue,
              secondaryColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
