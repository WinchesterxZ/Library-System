import 'models/book.dart';
import 'models/user.dart';
import 'models/library.dart';

void main() {
  // Create our library
  var library = Library();
  
  print('\n*** Adding Books ***');
  library.addBook(Book(id: 1, title: "Clean Code: A Handbook of Agile Software"));
  library.addBook(Book(id: 2, title: "Design Patterns: Elements of Reusable Software"));
  library.addBook(Book(id: 3, title: "The Pragmatic Programmer"));
  
  print('\n*** Adding Users ***');
  library.addUser(User(id: 1, name: "Ahmed Emad"));
  library.addUser(User(id: 2, name: "Mohammed Esmail"));
  
  print('\n*** Testing Library Operations ***');
  
  // Successful borrow
  library.borrowBook(1, 1);  // Ahmed borrows Clean Code
  
  // Try to borrow already borrowed book
  library.borrowBook(1, 2);  // Mohammed tries to borrow Clean Code (should fail)
  
  // Try to borrow with invalid user
  library.borrowBook(2, 99); // Non-existent user tries to borrow
  
  // Try to borrow non-existent book
  library.borrowBook(99, 1); // Ahmed tries to borrow non-existent book
  
  // Successful borrow
  library.borrowBook(2, 2);  // Mohammed borrows Design Patterns
  
  print('\n*** Testing Return Operations ***');
  
  // Successful return
  library.returnBook(1);     // Return Clean Code
  
  // Try to return non-borrowed book
  library.returnBook(3);     // Try to return non-borrowed book
  
  // Try to return non-existent book
  library.returnBook(99);    // Try to return non-existent book
  
  // Try to return already returned book
  library.returnBook(1);     // Try to return Clean Code again
  
  print('\n*** Final Library State ***');
  library.displayInfo();
}