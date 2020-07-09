import 'dart:math';

// * return-type func-name(data-type1 param1, data-type2 param2)
String getFullName(String firstName, String lastName) {
  return '$firstName $lastName';
}

// ? Omitting return-type doesn't affect
getTheFullName(String firstName, String lastName) {
  return '$firstName $lastName';
}

// ? Arrow Functions
getArrowFullName(String firstName, String lastName) => '$firstName $lastName';

// ? Named Paramters: Watch the {}
getNamedFullName({String firstName, String lastName}) {
  return "$firstName $lastName";
}

// ? Default Paramaters: Again, watch the {}
getDefaultFullName(String firstName, {String lastName = "Daniels"}) {
  return "$firstName $lastName";
}

// * Functions are First-Class Citizen: Can be returned, passed as paramteres, assigned etc.
outerFunc(Function inner, int x, int y) {
  return inner(x, y);
}

main(List<String> args) {
  String firstName = 'Rahul';
  print(getFullName(firstName, 'SriRam'));
  print(getTheFullName(firstName, 'SriRam'));
  print(getArrowFullName(firstName, 'SriRam'));
  print(getNamedFullName(firstName: firstName)); // the other will be 'null'
  print(getDefaultFullName(
      'Johnny')); // the other will be the defualt that is specified
  print(outerFunc(pow, 2, 3));

  // ? Anonymous Functions
  List<String> fruits = ['apples', 'bananas', 'oranges'];
  fruits.forEach((item) {
    print('${fruits.indexOf(item)}: $item');
  });
}
