void main(){
  String nome = 'morango';
  double peso = 1.4;
  String cor = 'vermelho';
  String sabor = 'doce';
  int diasAposColheita = 14;
  bool isMadura;

  Frutas laranaja = Frutas(nome, peso, cor, sabor, diasAposColheita);
  Frutas uva = Frutas('Uva', 1.44, 'verde', 'doce', diasAposColheita);

  print(laranaja.nome);
  laranaja.estaMadura(10);
}

class Frutas{
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasAposColheita;
  bool? isMadura;

  // Criar o construtr é apenas repetir o nome da classe
  Frutas(this.nome, this.peso, this.cor, this.sabor, this.diasAposColheita, {this.isMadura});

  // Podemos criar outros tipos de construtores com parametros nomeados obrigatorios
  Frutas.nomeados({required this.nome, required this.peso, required this.cor, required this.sabor, required this.diasAposColheita, this.isMadura});

  // Podemos criar um método com operações internas
  Frutas.operacoes(this.nome, this.peso, this.cor, this.sabor, this.diasAposColheita, {this.isMadura}){
    nome = nome.toLowerCase();
    cor = cor.toLowerCase();
  }

  // Criando um método
  void estaMadura(int diasParaMadura){
    isMadura = diasParaMadura <= diasAposColheita;
    print('A sua fruta está madura? $isMadura');
    print('Pois foi colhida a $diasAposColheita e precisa de $diasParaMadura para ficar madura.');
  }

}