void main(){
  String nome = 'morango';
  double peso = 1.4;
  String cor = 'vermelho';
  String sabor = 'doce';
  int diasAposColheita = 40;
  bool isMadura;

  isMadura = funcIsMadura(diasAposColheita);
  print(isMadura);
  mostrarMadura(nome, diasAposColheita, cor: cor, sabor: sabor, peso: peso);
}

// 1- Posicional obrigatório, o parâmetro nome e dias possuem uma posição correta e são obrigatórios
// 2- Nomeados opcionais, o parâmetro cor é opcional, e não possui um lugar exato na chamada da função
// 3- Parâmetro por padrão, tbm opciona, porém recebe um valor por padrão
// 4- Nomeados obrigatórios - required, colocamos a funcionalidade de nomear na chamada, de forma obrigatória

void mostrarMadura(String nome, int dias, {String? cor, double peso = 0.00, required String sabor}){
  if (dias>=30){
    print('A $nome está madura, possui um sabor $sabor e seu peso é: $peso g');
  }
  else{
    print('A $nome não está madura, possui um sabor $sabor e seu peso é: $peso g');
  }

  if (cor!=null){
    print('A $nome é $cor');
  }
}

bool funcIsMadura(int dias){  
  if(dias>40){
    return true;
  }
  else{
    return false;
  }
}