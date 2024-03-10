import 'dart:io';

void main() {
  List<int> fibonacci = [0, 1];
  int? numero;

  print(
      "Informe um número para verificar se pertence à sequência de Fibonacci:");
  String? input = stdin.readLineSync();

  if (input != null) {
    numero = int.tryParse(input);
  } else {
    return;
  }

  print("o numero é igual a: $numero");

  for (int i = 2; i < numero!; i++) {
    fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
  }
  print('Sequência de Fibonacci com $numero números:');
  for (int i = 0; i < numero; i++) {
    print('Fibonacci $i: ${fibonacci[i]}');
  }

  if (fibonacci.contains(numero)) {
    print("$numero pertence à sequência de Fibonacci.");
  } else {
    print("$numero não pertence à sequência de Fibonacci.");
  }
}
