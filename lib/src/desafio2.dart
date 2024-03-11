void main() {
  int verificarNumero = 5;
  print("O número para ser verificado se pertence à sequência de Fibonacci é: $verificarNumero");

  List<int> listaFibonacci = fibonacci(verificarNumero);
  ifContemNumero(verificarNumero, listaFibonacci);
}

List<int> fibonacci(int verificarNumero) {
  List<int> listaFibonacci = [0, 1];
  for (int i = 2; i < verificarNumero; i++) {
    listaFibonacci.add(listaFibonacci[i - 1] + listaFibonacci[i - 2]);
  }
  for (int i = 0; i < verificarNumero; i++) {
    print('Fibonacci $i: ${listaFibonacci[i]}');
  }
  return listaFibonacci;
}

void ifContemNumero(int verificarNumero, List<int> listaFibonacci) {
  if (listaFibonacci.contains(verificarNumero)) {
    print("$verificarNumero pertence à sequência de Fibonacci.");
  } else {
    print("$verificarNumero não pertence à sequência de Fibonacci.");
  }
}
