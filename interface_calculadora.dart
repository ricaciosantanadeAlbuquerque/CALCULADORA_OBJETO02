abstract class InterfaceCalculadora{
  double? somaValor;
  double? subtracaoValor;
  double? multiplicacaoValor;
  double? divisaovalor;

  double soma({required double valor1,required double valor2});
  double subtracao({required double valor1,required double valor2});
  double multiplicacao({required double valor1,required double valor2});
}