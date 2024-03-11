
void main() {
  String inputString = "Desafio, target"; 
  String invertedString = invertString(inputString);
  print("String original: $inputString");
  print("String invertida: $invertedString");
}

String invertString(String input) {
  String inverted = '';
  for (int i = input.length - 1; i >= 0; i--) {
    inverted += input[i];
  }
  return inverted;
}