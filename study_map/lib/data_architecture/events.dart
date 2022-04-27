import "accounts.dart";
import "group.dart";

class StudyEvent {
  String name;
  String location; // this will be a pin when created
  String time;
  List<Account> memberList = List.empty(growable: true);

  StudyEvent({required this.name, required this.location, required this.time});

  //adding individual members
  void addMember(Account member) {
    memberList.add(member);
  }

  //if group was linked to a study event, add all group members
  void addGroupMembers(Group group) {
    for (var account in group.getMembers()) {
      memberList.add(account);
    }
  }
}
