import 'dart:math';

class Quadrado {
  double lado;
  Quadrado({required this.lado});

  area() {
    return pow(lado, 2);
  }

  perimetro() {
    return 4 * lado;
  }
}

void main(List<String> args) {
  Quadrado q1 = Quadrado(lado: 2);
  Quadrado q2 = Quadrado(lado: 4);
  Quadrado q3 = Quadrado(lado: 5);

  print("Área Q1: ${q1.area()}");
  print("Perímetro Q1: ${q1.perimetro()}");

  print("Área Q2: ${q2.area()}");
  print("Perímetro Q2: ${q2.perimetro()}");

  print("Área Q3: ${q3.area()}");
  print("Perímetro Q3: ${q3.perimetro()}");
}
