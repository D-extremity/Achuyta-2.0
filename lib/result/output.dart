Map<String, Range> ph = {
  "bajra": Range(7.5, 8.5),
  "urad": Range(6.6, 7.5),
  "wheat": Range(6.5, 7.5),
  "mustard": Range(6.0, 7.5),
  "rice": Range(6.0, 6.7),
  "maize": Range(5.5, 8.0),
  "tomato": Range(5.5, 7.5),
  "jowar": Range(5.5, 7.0),
  "sugarcane": Range(5.5, 6.5),
  "potato": Range(4.8, 5.4),
};

Map<String, Range> nitrogen = {
  "bajra": Range(80, 100),
  "urad": Range(10, 20),
  "wheat": Range(200, 250),
  "mustard": Range(30, 45),
  "rice": Range(60, 70),
  "maize": Range(25, 35),
  "tomato": Range(134, 145),
  "jowar": Range(30, 100),
  "sugarcane": Range(50, 60),
  "potato": Range(110, 120),
};

Map<String, Range> phosphorus = {
  "bajra": Range(10, 20),
  "urad": Range(20, 30),
  "wheat": Range(10, 20),
  "mustard": Range(30, 35),
  "rice": Range(15, 30),
  "maize": Range(20, 40),
  "tomato": Range(13, 18),
  "jowar": Range(14, 25),
  "sugarcane": Range(30, 40),
  "potato": Range(14, 28),
};

Map<String, Range> potassium = {
  "bajra": Range(75, 85),
  "urad": Range(11, 22),
  "wheat": Range(161, 170),
  "mustard": Range(20, 25),
  "rice": Range(10, 30),
  "maize": Range(165, 170),
  "tomato": Range(176, 243),
  "jowar": Range(12.5, 25),
  "sugarcane": Range(110, 120),
  "potato": Range(150, 300),
};

Map<String, Range> sulphur = {
  "bajra": Range(5, 10),
  "urad": Range(10, 15),
  "wheat": Range(7, 15),
  "mustard": Range(45, 50),
  "rice": Range(4, 5),
  "maize": Range(14, 20),
  "tomato": Range(49, 65),
  "jowar": Range(15, 20),
  "sugarcane": Range(20, 30),
  "potato": Range(10, 20),
};

Map<String, Range> zinc = {
  "bajra": Range(25, 30),
  "urad": Range(11, 13),
  "wheat": Range(45, 50),
  "mustard": Range(3, 5),
  "rice": Range(4, 5),
  "maize": Range(1, 1.7),
  "tomato": Range(65, 70),
  "jowar": Range(0.5, 1.0),
  "sugarcane": Range(5, 6),
  "potato": Range(0.1, 0.2),
};

Map<String, Range> boron = {
  "bajra": Range(0, 0),
  "urad": Range(100, 110),
  "wheat": Range(0.25, 0.65),
  "mustard": Range(0.75, 0.10),
  "rice": Range(20, 25),
  "maize": Range(10, 20),
  "tomato": Range(100, 200),
  "jowar": Range(20, 100),
  "sugarcane": Range(2.5, 5),
  "potato": Range(5, 20),
};

Map<String, Range> iron = {
  "bajra": Range(6.5, 12),
  "urad": Range(11, 13),
  "wheat": Range(6, 7),
  "mustard": Range(20, 30),
  "rice": Range(42, 50),
  "maize": Range(44, 46),
  "tomato": Range(280, 300),
  "jowar": Range(40, 100),
  "sugarcane": Range(0, 0),
  "potato": Range(50, 150),
};
// void main() {
//   print(resultOut());
// }

List<String> resultOut(
    {required double boronInput,
    required double ironInput,
    required double nitrogenInput,
    required double zincInput,
    required double sulphurInput,
    required double phInput,
    required double phosInput,
    required double potasInput}) {
  // Define the input value and stored data as a map of range names to their corresponding ranges.

  // Input value and the string representing the stored data ranges.
// double inputValue = 43.6; // Change this value as needed.

//   print(getResult(inputValue,iron));
  final List<String> boronResult = getResult(boronInput, boron);
  final List<String> ironResult = getResult(ironInput, iron);
  final List<String> nitrogenResult = getResult(nitrogenInput, nitrogen);
  final List<String> zincResult = getResult(zincInput, zinc);
  final List<String> sulphurResult = getResult(sulphurInput, sulphur);
  final List<String> potassiumResult = getResult(potasInput, potassium);
  final List<String> phResult = getResult(phInput, ph);
  final List<String> phosphorusResult = getResult(phosInput, phosphorus);

  // print(
  // "$boronResult\n$ironResult\n$phResult\n$nitrogenResult\n$zincResult\n$sulphurResult\n$potassiumResult\n$phosphorusResult");

  final List<String> elements = List.from(boronResult)
    ..addAll(phosphorusResult)
    ..addAll(ironResult)
    ..addAll(nitrogenResult)
    ..addAll(zincResult)
    ..addAll(sulphurResult)
    ..addAll(potassiumResult)
    ..addAll(phResult);

  Map<String, double> map = {};

  for (var element in elements) {
    if (!map.containsKey(element)) {
      map[element] = 1;
    } else {
      map[element] = map[element]! + 1;
    }
  }

  // print(map);

  final output = getKeysInDescendingOrder(map);
  // print(output);
  return output;
}

class Range {
  final double start;
  final double end;

  Range(this.start, this.end);

  // Check if a value is within the range.
  bool contains(double value) {
    return value >= start && value <= end;
  }

  // Calculate the size of the range.
  double size() {
    return end - start + 1;
  }
}

List<String> getResult(double inputValue, Map<String, Range> data) {
  String inputDataString =
      "bajra,urad,wheat,mustard,rice,maize,tomato,jowar,sugarcane,potato";

  // Split the string into range names.
  List<String> rangeNames = inputDataString.split(',');
//    print(rangeNames);

  // Find and store the ranges that contain the input value.
  List<Range> matchingRanges = [];
  for (String rangeName in rangeNames) {
    Range? range = data[rangeName];
    if (range != null && range.contains(inputValue)) {
      matchingRanges.add(range);
    }
  }

  // Sort the matchingRanges in decreasing order based on their range size.
  matchingRanges.sort((a, b) => b.size().compareTo(a.size()));
  List<String> preference = [];
  // Print the sorted range names.
  for (Range range in matchingRanges) {
    String rangeName =
        data.entries.firstWhere((entry) => entry.value == range).key;
    preference.add(rangeName);
  }
//    print(preference.reversed.toList());
  return preference.reversed.toList();
}

// List<String> getKeysInDescendingOrder(Map<String, double> inputMap) {
//   // Get the keys from the map
//   List<String> keys = inputMap.keys.toList();

//   // Sort the keys in descending order
//  keys.sort((a, b) => b.compareTo(a));

//   return keys;
// }


List<String> getKeysInDescendingOrder(Map<String, double> map) {
  // Create a list of map entries from the input map
  List<MapEntry<String, double>> entries = map.entries.toList();
  // Sort the list by comparing the values of each entry
  entries.sort((a, b) => b.value.compareTo(a.value));
  // Map the list to a list of keys and return it
  return entries.map((e) => e.key).toList();
}




//tomato,sugarcane,jowar