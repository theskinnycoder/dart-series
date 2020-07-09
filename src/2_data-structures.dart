main(List<String> args) {
  // * 1) Lists: List<data-type>
  List<int> list1 = [1, 2, 3, 4, 4];
  print(list1);

  // ? 0-based indexing
  print(list1[1]);
  list1[1] = 69;

  // ? length Property
  print(list1.length);

  // ? Insert an element
  list1.add(10);

  // ? Delete by value
  list1.remove(3);

  // ? Delete by position
  list1.removeAt(0);

  // ? Get Index
  print(list1.indexOf(4)); // First Occuerence

  // * constant / immutable lists
  List<String> list2 = const ["The", 'Skinny', '''Coder'''];
  print(list2);
  // adding, deleting and updating elements isn't possible
  // ! list2.add('!');

  // * 2) Maps: Map<key-data-type, value-data-type>
  Map<int, String> nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  print(nobleGases);

  // ? Add a new pair
  nobleGases[36] = 'krypton';
  print(nobleGases);

  // ? Property
  print(nobleGases.length);
  print(nobleGases.keys);
  print(nobleGases.values);
  print(nobleGases.entries);

  // ? Check if a pair exists
  print(nobleGases.containsKey(2));
  print(nobleGases.containsValue('neon'));

  // * constant / immutable lists
  Map<String, String> starWars = const {
    "Hello, There": "General, Kenobi",
    "Palpatine": "I am the Senate"
  };
  print(starWars);

  // adding, deleting and updating pairs isn't possible
  // ! starWars["Master Yoda"] = "Do Or Do Not. There's no try";
  print(starWars);
}
