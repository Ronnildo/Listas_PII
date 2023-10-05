class Lampada {
  bool ligada = false;
  void liga() {
    ligada = true;
  }

  void desliga() {
    ligada = false;
  }

  String observar() {
    if (ligada) {
      return "Ligada";
    } else {
      return "Desligada";
    }
  }
}

void main(List<String> args) {
  Lampada lamp1 = Lampada();
  Lampada lamp2 = Lampada();

  lamp1.liga();
  print("Lamp1: ${lamp1.observar()}");

  lamp2.desliga();
  print("Lamp2: ${lamp2.observar()}");
}
