import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:study_map/widgets/expandable_vertical_fab_menu.dart';

class StudyMap extends StatefulWidget {
  const StudyMap({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<StudyMap> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(45.521563, -122.677433);

  static const _actionTitles = ['Create Post', 'Upload Photo', 'Upload Video'];

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
          actions: <Widget>[
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
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          zoomControlsEnabled: false,
        ),
        floatingActionButton: VerticalExpandableFab(
          distance: 112.0,
          children: [
            ActionButton(
              onPressed: () => _showAction(context, 0),
              icon: const Icon(Icons.search),
              primaryColor: Colors.blue,
              secondaryColor: Colors.white,
            ),
            ActionButton(
              onPressed: () => _showAction(context, 1),
              icon: const Icon(Icons.add),
              primaryColor: Colors.blue,
              secondaryColor: Colors.white,
            ),
            ActionButton(
              onPressed: () => _showAction(context, 2),
              icon: const Icon(Icons.settings),
              primaryColor: Colors.blue,
              secondaryColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
