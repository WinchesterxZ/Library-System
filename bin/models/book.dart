// This class represents a book in our library
class Book {
  // defining book properties
  final int id;
  final String title;
  bool borrowed; 

  // Constructor with named parameters
  Book({
    required this.id,
    required this.title,
    this.borrowed = false,  // default to not borrowed
  });

  // Shows book information 
  void displayInfo() {
    print('Book ID: $id | Title: $title | Status: ${borrowed ? "Borrowed" : "Available"}');
  }
}
