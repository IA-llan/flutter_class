void main(){
  Comida banana = Comida('banana', 'doce', 'amarela', 12);
  Doce morango = Doce('Morango', 'doce', 'vermelho', 76, true);
  Salgado coxinha = Salgado('coxinha', 'salgado', 'douradinha', 50, true);

  banana.sobreComida();
  morango.sobreComida();
  coxinha.sobreComida();
  morango.fazerSuco();
  coxinha.cozinhar();
}

class Comida{
  String nome;
  String sabor;
  String cor;
  double peso;

  Comida(this.nome, this.sabor, this.cor, this.peso);
  void sobreComida(){
    print('Este(a), $nome pesa $peso gramas e é $cor.');
  }
}

class Doce extends Comida{
  bool isDoce;

  Doce(String nome, String sabor, String cor, double peso, this.isDoce):super(nome, sabor, cor, peso);

  void fazerSuco(){
    if(isDoce){
      print('Você fez um ótimo suco de $nome.');
    }else{
      print('Não podemos fazer suco com comida salgada :(');
    }
  }
}

class Salgado extends Comida{
  bool isSalgado;

  Salgado(String nome, String sabor, String cor, double peso, this.isSalgado):super(nome,sabor,cor,peso);

  void cozinhar(){
    if(isSalgado){
      print('Pronto, sua comida está cozinhando.');
    }else{
      print('Não sei cozinhar comida doce');
    }
  }
}