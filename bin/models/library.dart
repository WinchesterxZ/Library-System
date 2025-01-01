import 'book.dart';
import 'user.dart';

class Library {
  final List<Book> books;
  final List<User> users;

  Library() : books = [], users = [];

  void addBook(Book book) {
    books.add(book);
    print('📚 Added new book: ${book.title}');
  }

  void addUser(User user) {
    users.add(user);
    print('👤 Added new user: ${user.name}');
  }

  void borrowBook(int bookId, int userId) {
    final bookFound = books.where((b) => b.id == bookId).toList();
    final userFound = users.where((u) => u.id == userId).toList();

    if (bookFound.isEmpty) {
      print('❌ Error: Book not found!');
      return;
    }

    if (userFound.isEmpty) {
      print('❌ Error: User not found!');
      return;
    }

    final book = bookFound.first;
    final user = userFound.first;

    if (book.borrowed) {
      print('❌ Sorry, book "${book.title}" is already borrowed!');
      return;
    }

    book.borrowed = true;
    print('✅ ${user.name} borrowed "${book.title}"');
  }

  void returnBook(int bookId) {
    final bookFound = books.where((b) => b.id == bookId).toList();

    if (bookFound.isEmpty) {
      print('❌ Error: Book not found!');
      return;
    }

    final book = bookFound.first;

    if (!book.borrowed) {
      print('❌ Book "${book.title}" was not borrowed!');
      return;
    }

    book.borrowed = false;
    print('✅ "${book.title}" has been returned');
  }

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
