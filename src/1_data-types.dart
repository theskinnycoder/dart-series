main(List<String> args) {
  // * 1) Booleans: true/false
  bool isMale = false;
  print(isMale);

  // * 2) Numbers: special data-type called 'num' is there
  int justInt = 5;
  double justFloat = 6.9;
  print(justInt);
  print(justFloat);

  // ? Can be type-casted to numbers from Strings
  int intFromString = int.parse('5');
  double floatFromString = double.parse('6.9');
  print(intFromString);
  print(floatFromString);

  // * 3) Strings: Can use single, double, triple-single, or triple-double quotes
  String myString1 = "Rahul SriRam";

  // ? String interpolation
  // * Use $ to interpolate variables
  String interpolatedString = 'My name is : $myString1'; // can be stored
  print(interpolatedString); // and then printed

  // ? Escape-Sequences : use '\'
  String myString2 = 'I\'M 19 YEARS OLD';

  // * Wrap with {} for interpolated expressions : ${2 + 2}
  print(
      '$interpolatedString. ${myString2.toLowerCase()}'); // can be printed directly

  // * 4) null: Declared but Initialized
  String name;
  print(name); // null
}
