String reformatDecimal(String input) {
  if (input.length == 0) { return input; }
  List<String> strDigits = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  bool firstDecimalFound = false;
  String output = '';
  int i = 0;
  if (input[0] == "0" && input[1] != ".") {
    i = 1;
  }
  for (i; i < input.length; i++) {
    if (strDigits.contains(input[i])) {
      output += input[i];
    } else if (input[i] == '.' && !firstDecimalFound) {
      firstDecimalFound = true;
      output += input[i];
    }
  }
  return output;
}