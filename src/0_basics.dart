main(List<String> args) {
  // * Type is inferred from the RHS
  var myNum1 = 69;
  var myString1 = 'The Skinny Coder';
  var myFloat1 = 4.20;
  var myBool1 = false;

  // ! print() can take only 1 argument to print
  print(myNum1);
  print(myString1);
  print(myFloat1);
  print(myBool1);

  // * Type can be specified explicitly (PREFERRED)
  int myNum2 = 69;
  String myString2 = 'The Skinny Coder';
  double myFloat2 = 4.20;
  bool myBool2 = true;
  print(myNum2);
  print(myString2);
  print(myFloat2);
  print(myBool2);

  // ? CONSTANTS : Should be initialized when declared

  final int myNum3 = 69;
  const String myString3 = 'The Skinny Coder';

  // ! Omit explicitly defining data types
  final myFloat3 = 4.20;
  const myBool3 = false;

  print(myNum3);
  print(myString3);
  print(myFloat3);
  print(myBool3);

  // * 'const's are compile-time contants, i.e., should have a literal assigned to them
  // * 'final's are run-time constants, i.e., can have a variable assigned too, with literals.

  // ? 'dynamic' is used to create dynamically-typed variables
  dynamic x = 5;
  print(x);
  x = 'Hey';
  print(x);
}
