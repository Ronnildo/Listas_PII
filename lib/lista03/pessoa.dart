import 'dart:math';

class Pessoa {
  String? _nome;
  double? _peso, _altura;
  int? _idade;

  set nome(String nome) => _nome = nome;
  String get nome => _nome!;

  set peso(double peso) => _peso = peso;
  double get peso => _peso!;

  set altura(double altura) => _altura = altura;
  double get altura => _altura!;

  set idade(int idade) => _idade = idade;
  int get idade => _idade!;

  double calcImc() {
    return peso / pow(altura, 2);
  }

  imprimeDados() {
    print("Nome $nome");
    print("Peso $peso");
    print("Peso $altura");
    print("Peso $idade");
    print("IMC: ${calcImc().toStringAsFixed(2)}");
  }
}
