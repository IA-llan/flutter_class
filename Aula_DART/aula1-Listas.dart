void main(){


  // Const e Final remete a uma constante que n vai ser alterada nunca
  const nome = 'Allan Ferreira';
  // Porem o final ele aceita receber o valor depois, porem apos receber ele n pode mais ser alterado
  final apelido;
  apelido  = 'Nalla';
  // Var tipa automático 
  var idade = 23;
  print(idade.runtimeType);

  // Necessário passar o tipo qua vai popular a lista
  List<String> nomes = [nome, 'Carlo', 'Guru', 'Guiri', 'Phedo'];

  // Para criarmos uma lista com mais de um tipo dentro se torna dinamica
  List<dynamic> sobre = [nomes[0], idade, 1.73, true, apelido];

  print(nomes[1]);
  print(nomes.length);
  print('Meu apelido é ${sobre[0]}');
}