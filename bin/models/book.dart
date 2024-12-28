// This class represents a book in our library
class Book {
  // Basic book properties
  final int id;
  final String title;
  bool borrowed;  // tracks if book is currently borrowed

  // Constructor with named parameters for clarity
  Book({
    required this.id,
    required this.title,
    this.borrowed = false,  // default to not borrowed
  });

  // Shows book information in a readable format
  void displayInfo() {
    print('Book ID: $id | Title: $title | Status: ${borrowed ? "Borrowed" : "Available"}');
  }
}
