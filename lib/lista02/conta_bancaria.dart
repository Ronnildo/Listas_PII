class ContaBancaria {
  String nome;
  int numeroConta;
  String agencia;
  double saldo;
  DateTime time;

  ContaBancaria(
      this.nome, this.agencia, this.numeroConta, this.saldo, this.time);

  void sacar(int valor) {
    saldo -= valor;
  }

  void deposita(int valor) {
    saldo += valor;
  }

  double calculaRendimento() {
    return saldo * 0.1;
  }

  String recuperaDadosImpressao() {
    return """
      Titular: $nome
      Agência: $agencia
      Número da conta: $numeroConta
      Saldo: $saldo
      Rendimento: ${calculaRendimento()}
    """;
  }
}

void main(List<String> args) {
  ContaBancaria conta =
      ContaBancaria("João", "2341", 126251, 2000.50, DateTime.now());
  print(conta.recuperaDadosImpressao());
}
