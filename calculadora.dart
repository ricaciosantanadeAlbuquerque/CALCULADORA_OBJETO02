import 'dart:io';

class Calculadora{
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

}