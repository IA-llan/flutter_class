import 'dart:io';

void main(){
  String nome = 'morango';
  double peso = 1.4;
  String cor = 'vermelho';
  String sabor = 'doce';
  int diasAposColheita = 14;
  bool isMadura;

  Frutas laranaja = Frutas(nome, peso, cor, sabor, diasAposColheita);
  Legumes mandioca = Legumes('Macaxeira', 3, 'marrom', true);
  Citricas limao = Citricas('Limao', 2, 'verde', 'azedo', 10, 25);
  Nozes macamia = Nozes('Macadamia', 4, 'marrom', 'doce', 33, 27);

  mandioca.printAlimento();
  mandioca.cozinhando();
  limao.existeRefri(true);
  limao.separarIngrediente();
  limao.prepararMassa();
  macamia.prepararMassa();
}

class Alimento{
  String nome;
  String cor;
  double peso;
  Alimento(this.nome, this.peso,this.cor);

  void printAlimento(){
    print('Este alimento é um(a) $nome, possui $peso gramas e é $cor.');
  }
}


class Frutas extends Alimento implements Bolo{
  String sabor;
  int diasAposColheita;
  bool? isMadura;

  // Criar o construtr é apenas repetir o nome da classe
  Frutas(String nome, double peso, String cor, this.sabor, this.diasAposColheita, {this.isMadura}):super(nome, peso, cor);
  
  // Criando um método
  void estaMadura(int diasParaMadura){
    isMadura = diasParaMadura <= diasAposColheita;
    print('A sua fruta está madura? $isMadura');
    print('Pois foi colhida a $diasAposColheita e precisa de $diasParaMadura para ficar madura.');
  }

    @override
  void assar() {
    // TODO: implement assar
    print('Assando seu bolo de $nome.');
  }
  
  @override
  void prepararMassa() {
    // TODO: implement prepararMassa
    print('Preparando a massa do seu bolo de $nome.');
  }
  
  @override
  void separarIngrediente() {
    // TODO: implement separarIngrediente
    print('Separando os ingredientes do seu bolo de $nome.');
  }
}


class Legumes extends Alimento{
  bool isPrecisoCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisoCozinhar):super(nome, peso, cor);

  void cozinhando(){
    if(isPrecisoCozinhar){
      print('Vamos cozinhar o $nome!');
    }else{
      print('Nem precisa cozinhar!');
    }
  }
}

class Citricas extends Frutas{
  double nivelAzedo;
  Citricas(String nome, double peso, String cor, String sabor, int diasAposColheita, this.nivelAzedo, {bool? isMadura}):super(nome, peso, cor,sabor,diasAposColheita);

  void existeRefri(bool existe){
    if(existe){
      print('Existe refri de $nome');
    }else{
      print('Não existe refri de $nome');
    }
  }
}

class Nozes extends Frutas{
  double porcentagemOleo;

  Nozes(String nome, double peso, String cor, String sabor, int diasAposColheita, this.porcentagemOleo, {bool? isMadura}):super(nome, peso, cor, sabor, diasAposColheita);

  void podeNaDieta(){
    print('A poncentagmem de oleosidade é de $porcentagemOleo%.');
  }

  @override
  void prepararMassa() {
    // TODO: implement prepararMassa
    print('Abrir a $nome.');
    super.prepararMassa();
  }
}

abstract class Bolo{
  void separarIngrediente();
  void prepararMassa();
  void assar();
}