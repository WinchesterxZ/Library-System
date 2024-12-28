import 'book.dart';
import 'user.dart';

// Main library management class
class Library {
  // Keep track of books and users
  final List<Book> books;
  final List<User> users;

  Library() : books = [], users = [];

  // Add a new book to library
  void addBook(Book book) {
    books.add(book);
    print('📚 Added new book: ${book.title}');
  }

  // Add user with feedback
  void addUser(User user) {
    users.add(user);
    print('👤 Added new user: ${user.name}');
  }

  // Enhanced book borrowing with more cases
  void borrowBook(int bookId, int userId) {
    try {
      final book = books.firstWhere((b) => b.id == bookId,
          orElse: () => throw 'Book not found! 😕');
      final user = users.firstWhere((u) => u.id == userId,
          orElse: () => throw 'User not found! 😕');

      if (book.borrowed) {
        print('❌ Sorry, book "${book.title}" is already borrowed!');
        return;
      }

      book.borrowed = true;
      print('✅ ${user.name} borrowed "${book.title}"');
    } catch (e) {
      print('❌ Error: $e');
    }
  }

  // Enhanced return book with more cases
  void returnBook(int bookId) {
    try {
      final book = books.firstWhere((b) => b.id == bookId,
          orElse: () => throw 'Book not found! 😕');

      if (!book.borrowed) {
        print('❌ Book "${book.title}" was not borrowed!');
        return;
      }

      book.borrowed = false;
      print('✅ "${book.title}" has been returned');
    } catch (e) {
      print('❌ Error: $e');
    }
  }

  // Show current library state
  void displayInfo() {
    print('\n📚 Library Status:');
    print('Books:');
    for (var book in books) {
      book.displayInfo();
    }
    print('\nUsers:');
    for (var user in users) {
      user.displayInfo();
    }
  }
}
