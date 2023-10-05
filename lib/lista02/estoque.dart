class Estoque {
  String nome;
  int qtdMin;
  int qtdAtual;

  Estoque.fromProduct(this.nome, this.qtdAtual, this.qtdMin) {
    if (qtdAtual < 0) {
      qtdAtual = 1;
    }
    if (qtdMin < 0) {
      qtdAtual = 1;
    }
  }

  void mudarNome(String nome) => this.nome = nome;

  void mudarQtdMin(int qtdMin) => this.qtdMin = qtdMin;

  void repor(int qtd) => qtdAtual += qtd;

  void darBaixa(int qtd) => qtdAtual -= qtd;

  String mostra() {
    return """
      Nome: $nome
      Quantidade Atual: $qtdAtual
      Quantidade Mínima: $qtdMin
      """;
  }

  bool precisaRepor() {
    if (qtdAtual <= qtdMin) {
      return true;
    } else {
      return false;
    }
  }
}

void main(List<String> args) {
  Estoque estoque1 = Estoque.fromProduct("Impressora", 13, 6);
  estoque1.darBaixa(5);
  print(estoque1.mostra());
}
