
import 'Aula4-funcoes_parametros.dart';
void main(){
  String nome = 'morango';
  double peso = 1.4;
  String cor = 'vermelho';
  String sabor = 'doce';
  int diasAposColheita = 14;
  //bool isMadura;

  mostrarMadura(nome, diasAposColheita, sabor: sabor, cor: cor, peso: peso);
  int diaFaltantes = funcQuantoDiasParaMadurar(diasAposColheita, 30);
  print('Faltam $diaFaltantes dias para madurar');
}

int funcQuantoDiasParaMadurar(int diasAposColheita, int diasParaMadurar){
  int diasFaltantes = diasParaMadurar - diasAposColheita;
  return diasFaltantes;
}