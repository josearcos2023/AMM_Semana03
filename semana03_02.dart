import 'dart:math';

class Calculadora {
  double add(double x, double y) => x + y;

  double sustration(double x, double y) => x - y;

  double multiplication(double x, double y) => x * y;

  double quotation(double x, double y) {
    if (y != 0) {
      return x / y;
    } else {
      throw Exception("No se puede dividir por cero");
    }
  }
}

mixin OperacionesAdicionales {
  double power(double base, double exponente) =>
      pow(base, exponente).toDouble();
}

mixin OperacionesAvanzadas {
  double squareRoot(double numero) => sqrt(numero);
}

class CalculadoraAvanzada extends Calculadora
    with OperacionesAdicionales, OperacionesAvanzadas {}

void main() {
  var calculadoraAvanzada = CalculadoraAvanzada();

  print("Addition: ${calculadoraAvanzada.add(50, 25)}");
  print("Sustration: ${calculadoraAvanzada.sustration(50, 25)}");
  print("Multiplication: ${calculadoraAvanzada.multiplication(50, 10)}");
  print("Quotation: ${calculadoraAvanzada.quotation(50, 25)}");
  print("Power: ${calculadoraAvanzada.power(5, 3)}");
  print("Square root: ${calculadoraAvanzada.squareRoot(625)}");
}
