class Account {
  String name; //account name
  String password; //account password

  Account({required this.name, required this.password}); //constructor

  String getName() {
    return name;
  }

  void setPassword(String newpassword) {
    password = newpassword;
  }
}
