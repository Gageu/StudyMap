import "accounts.dart";

class Group {
  String name; //name of group
  List<Account> memberList =
      List.empty(growable: true); //list of members in group

  Group({required this.name, required this.memberList}); //constructor

  String getName() {
    return name;
  }

  List getMembers() {
    return memberList;
  }

  void setName(String newname) {
    name = newname;
  }

  void addMember(Account member) {
    memberList.add(member);
  }
}
