import 'dart:io';
import 'interface_calculadora.dart';

class Calculadora implements InterfaceCalculadora{
  double? _op;
  double? _valor1;
  double? _valor2;

  Calculadora({required double op,required double valo1,required double valor2}){
    escolha(op: op, valo1: valo1, valor2: valor2);
  }

  double? get op => this._op;

  void set op(double? op) => this._op = op;

  double? get valor1 => this._valor1;

  void set valor1(double? valor1) => this._valor1 = valor1;

  double? get valor2 => this._valor2;

  void set valor2(double? valor2) => this._valor2 = valor2;


  void escolha({required double op,required double valo1,required double valor2}){
    switch(op){
      case 1:
      break;
      case 2:
      break;
      case 3:
      break;
      case 4:
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
 somaValor = valor1 + valor2;
 return somaValor ?? 0.0;
}

@override
double subtracao({required double valor1,required double valor2}){
  subtracaoValor = valor1 - valor2;
  return subtracaoValor ??  0.0;
}

@override
double multiplicacao({required double valor1,required double valor2}){
 multiplicacaoValor = valor1 * valor2;
 return multiplicacaoValor ?? 0.0;
}

@override 
double divisao({required double valor1,required double valor2}){
  divisaoValor = valor1 / valor2;
  return divisaoValor ?? 0.0; 
}
}