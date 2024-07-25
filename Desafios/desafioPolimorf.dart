void main(){

}

class Veiculo implements Fabrica{
  int numeroRodas;
  String nome;
  int numeroPassageiros;

  Veiculo(this.numeroRodas, this.nome, this.numeroPassageiros);

  void sobreVeiculo(){
    print('O veículo escolhido se chama $nome, possui $numeroRodas rodas e consegue levar $numeroPassageiros passageiros.');
  }
  
  @override
  void montar() {
    // TODO: implement montar
    print('Montando veículo: $nome');
  }
  
  @override
  void separarPecas() {
    // TODO: implement separarPecas
    print('Separando as peças do seu veículo');
  }
  
  @override
  void vender() {
    // TODO: implement vender
    print('Seu veículo está pronto para ser vendido :)');
  }
}

class Moto extends Veiculo{
  bool isCarenada;

  Moto(int numeroRodas, String nome, int numeroPassageiros, this.isCarenada):super(numeroRodas, nome, numeroPassageiros);
   void sobreMoto(){
    print('Sua moto é carenada: $isCarenada');
  }

  @override
  void vender() {
    // TODO: implement vender
    super.vender();
    print('Vai sair mais barato por ser moto :#');
  }
}

class Carro extends Veiculo{
  bool isEsportivo;

  Carro(int numeroRodas, String nome, int numeroPassageiros, this.isEsportivo):super(numeroRodas, nome, numeroPassageiros);
   void sobreMoto(){
    print('Seu carro é esportivo: $isEsportivo');
  }

  @override
  void montar() {
    // TODO: implement montar
    super.montar();
  }
}

abstract class Fabrica{
  void separarPecas(){}
  void montar(){}
  void vender(){}
}