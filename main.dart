import 'dart:io';

void main(List<String> args) {
  menu();
}

/// Menu
void menu() {
  print('==========Menu==========');
  print('Digite [1] para soma');
  print('Digite [2] para subtrair');
  print('Digite [3] para multiplicar');
  print('Digite [4] para dividir');
  print('Digite [5] para sair');
  String? entradaOp = stdin.readLineSync();

  if (entradaOp != null && entradaOp.isNotEmpty) {
    
    try{
 
     double opcao = double.tryParse(entradaOp) ?? 0.0;

     if ((double.tryParse(entradaOp) ?? 0.0) == 5) {
        print('Você digitou 5, o programa será encerrado');
        exit(0);
      } else if (int.parse(entradaOp) > 0 && int.parse(entradaOp) < 5) {
        print('Digite o primeiro valor da operação');
        String? entradaValor1 = stdin.readLineSync();
        print('Digite o segundo valor da operação');
        String? entradaValor2 = stdin.readLineSync();

        if (entradaValor1 != null && entradaValor2 != null) {
          if (entradaValor1.isNotEmpty && entradaValor2.isNotEmpty) {
            try {
              double valor1 = double.tryParse(entradaValor1) ?? 0.0;
              double valor2 = double.tryParse(entradaValor2) ?? 0.0;
              print('opção: $opcao valor 1 : $valor1, valor 2 : $valor2');
            } catch (e) {
              throw Exception('ERRO! ${entradaValor1} e ${entradaValor2} não podem ser convertidos para double');
            }
          } else {
            print('ERRO! valor vazio!!! O programa será encerrado');
            exit(0);
          }
        } else {
          print('ERRO !!! valor nulo. O programa será encerrado !!!');
          exit(0);
        }
      } else {
        print('Você digitou um valor fora da faixa !');
        print('O programa será encerrado ');
        exit(0);
      }

    }catch(e){
     throw Exception('ERRO! não é possível converte os valores [$entradaOp]');
    }
    
  } else {
    print('ERRO! o programa será encerrado');
    exit(0);
  }
}
