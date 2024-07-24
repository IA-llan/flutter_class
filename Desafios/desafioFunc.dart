void main(){
  String nome= 'Laranja';

  double peso= 98;

  int diasDesdeColheita= 1;

  int diasParaMadura= 20;

  bool isMadura= true;

  funcToString(nome: nome, peso: peso, diasAposColheita: diasDesdeColheita, diasParaMadurar: diasParaMadura, isMadura: isMadura);
}

void funcToString({required String nome, required double peso, required int diasAposColheita, required int diasParaMadurar, required bool isMadura}){
  if(isMadura == true){
    print('A $nome pesa $peso gramas! Ela foi colhida há $diasAposColheita dias e precisa de $diasParaMadurar dias para amadurecer, logo, a Laranja está madura!');
  }
  else{
    print('A $nome pesa $peso gramas! Ela foi colhida há $diasAposColheita dias e precisa de $diasParaMadurar dias para amadurecer, logo, a Laranja está madura!');
  }
  
}