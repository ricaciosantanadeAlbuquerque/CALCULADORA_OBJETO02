import 'dart:io';
import 'interface_calculadora.dart';

class Calculadora implements InterfaceCalculadora{
  double? _op;
  double? _valor1;
  double? _valor2;

  Calculadora({required double op,required double valor1,required double valor2}){
    this.op = op;
    this.valor1 = valor1;
    this.valor2 = valor2;
    escolha(op: op, valor1: valor1, valor2: valor2);
  }

  double? get op => this._op;

  void set op(double? op) => this._op = op;

  double? get valor1 => this._valor1;

  void set valor1(double? valor1) => this._valor1 = valor1;

  double? get valor2 => this._valor2;

  void set valor2(double? valor2) => this._valor2 = valor2;


  void escolha({required double op,required double valor1,required double valor2}){
    switch(op){
      case 1:
     somaValor = soma(valor1: valor1, valor2: valor2);
      break;
      case 2:
      subtracaoValor = subtracao(valor1: valor1, valor2: valor2);
      break;
      case 3:
      multiplicacaoValor = multiplicacao(valor1: valor1, valor2: valor2);
      break;
      case 4:
      divisaoValor = divisao(valor1: valor1, valor2: valor2);
      break;
      default:
      print('ERRO! valor fora da faixa !!');
      print('Encerrando o programa');
      exit(0);
    }
  }
// implementando a interface calculadora
@override
double? somaValor;
@override
double? subtracaoValor;
@override
double? multiplicacaoValor;
@override
double? divisaoValor;

@override
double soma({required double valor1,required double valor2}){
 var somaValorLocal = valor1 + valor2;
 return somaValorLocal;
}

@override
double subtracao({required double valor1,required double valor2}){
  var subtracaoValorLocal = valor1 - valor2;
  return subtracaoValorLocal;
}

@override
double multiplicacao({required double valor1,required double valor2}){
 var multiplicacaoValorLocal = valor1 * valor2;
 return multiplicacaoValorLocal;
}

@override 
double divisao({required double valor1,required double valor2}){
 var divisaoValorLocal = valor1 / valor2;
  return divisaoValorLocal; 
}
@override
String toString() => 'Opção: $op, valor1: $valor1, valor2: $valor2';
}