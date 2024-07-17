void main(){
  int idade = 17;
  bool maior_idade;

  // Utilizando o condicional
  if(idade >= 18){
    maior_idade = true;
  }
  else{
    maior_idade = false;
  }

  // Começo dos loops com for
  for(int i=0; i<=5; i+=2){
    print('teste $i');
  }

  // Loop while
  int repeticao = 100;
  while(repeticao>0){
    repeticao = repeticao-10;
    print('Menos 10 de energia agora possui um total de $repeticao');
  }

  // Loop do while
  int energia = 140;
  do{
    energia = energia-14;
    print('Menos 14 de energia agora possui um total de $energia');
  }while(energia>0);

  // Loop switch case
  var nota = 9;

  switch(nota){
    case >=9:{
      print('A nota $nota é perfeita');
    }break;

    case >=6:{
      print('A nota $nota é média');
    }

    case <6:{
      print('A nota $nota é ruim');
    }
    default:{
      print('Caiu no defô');
    }
  }

  print('A idade $idade é considerada maioridade: $maior_idade');
}