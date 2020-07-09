switchExample(int marks) {
  switch (marks) {
    case 30:
      print('Fail');
      break;
    case 20:
    case 30:
      print('Still Young!');
      break;
    case 40:
      print('Getting old.');
      break;
    case 50:
      print('You are old!');
      break;
  }
}

main(List<String> args) {
  int number = 50;

  // ? TASK: Write a program to check if 'number' is greater than, less than, or equal to 50

  if (number > 50)
    print('Greater than 50');
  else if (number < 50)
    print('Lesser than 50');
  else
    print('Equal to 50');

  // ? TASK: Do the above using terniary-conditionals
  String output = (number > 50)
      ? "Greater than 50"
      : ((number < 50) ? "Lesser than 50" : "Equal to 50");
  print(output);

  // ? TASK: Write a program to get the grade
  int marks = 50;
}
