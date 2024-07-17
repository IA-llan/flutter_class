// importando a lib dart io(inputs and outputs)
import 'dart:io';

void main() {
  print('Qual seu nome?');
  String? nome_cliente = stdin.readLineSync();

  // As dua ?? dentro do try é para caso o valor seja inválido 'string' ele vai ser atribuido a um valor nulo,
  //  após isso ele será atribuido a valores 0 por ser nulo devido as duas ?? fora do try.
  print('Qual sua altura?');
  String? altura_cliente = stdin.readLineSync();
  double altura = double.tryParse(altura_cliente ?? '') ?? 0;

  print('Qual sua idade?');
  String? idade_cliente = stdin.readLineSync();
  int idade = int.tryParse(idade_cliente ?? '') ?? 0;

  print('Olá, $nome_cliente!');
  print('Sua idade é $idade anos.');
  print('Sua altura é $altura metros.');
}