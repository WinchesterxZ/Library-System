// Represents a library member
class User {
  final int id;
  final String name;

  User({required this.id, required this.name});

  // Display user details
  void displayInfo() {
    print('User ID: $id | Name: $name');
  }
}
