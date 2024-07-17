void main(){
  int idade = 23;
  double altura = 1.73;
  bool booleando = (idade == altura);
  String nome = 'Allan';
  String frase = 'Esse é minha idade $idade \n'
                 'Tenho $altura de altura \n'
                 'Meu nome é $nome';

  // #### CONVERSÃO DE TIPAGEM ####
  //String um = '1';
  //int numero_um = int.parse(um);
  //String dois_ponto_dois = '2.2';
  //double numero_dois = double.parse(dois_ponto_dois);
  //String idade_str = idade.toString();
  //String altura_str = altura.toString();
  var teste = altura.toStringAsFixed(2);
  print(teste.runtimeType);
  
  print(idade);
  print(altura);
  print(booleando);
  print('-'*39);
  print(frase);
}