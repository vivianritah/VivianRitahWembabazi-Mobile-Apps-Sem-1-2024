// 1. a) Flutter is an open-source UI software development kit created by Google for building cross-platform applications from a single codebase.

// APPLICATIONS
// Web applications
// Cross platform Games
// Desktop applications

// b) Cross platform development
// Fast development with hot reload
// Beautiful and customisable UI

// c)  Dart is an object-oriented, class-based language designed for building web, server, desktop, and mobile applications.
// It is commonly used because of its unique properties that complement Flutter's architecture and goals.

// d) Hot Reloading is a feature in Flutter that allows developers to instantly see the results of changes made to the code without restarting the application.
// Hot reloading helps a developer in faster development and improved experimentation.

// e) Cross-Platform Development
// Hot Reloading
// Customised widgets

// f)Stateless Widgets are widgets that do not change or maintain any internal state. 
// Example: A static title bar or a logo on a page

// Stateful Widgets are widgets that can change dynamically based on user interaction or other events.
// Example: A counter app 

// question g
int addTwoNumbers(int num1, int num2) {
  return num1 + num2;
}

void main() {
  int result = addTwoNumbers(5, 7);
  print('The sum is: $result'); 
}


// question h
void checkEvenOrOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
}

void master() {
  int num = 7; 
  checkEvenOrOdd(num);
}

// question i
void map() {
  Map<int, String> names = {};
  names[1] = 'Alice';
  names[2] = 'Bob';
  names[3] = 'Charlie';

  print('Names in the map:');
  names.forEach((key, value) {
    print('Key: $key, Name: $value');
  });
}


