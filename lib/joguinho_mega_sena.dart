import "dart:io"; //pacote de entrada e saída de dados
import "dart:math"; //pacote de valores aleatórios

var numeros = <int> [];

void pegarNumeroUsuario(){
  print("digite um número:");
  int numero = int.parse(stdin.readLineSync()!);
  
  while(numero<1 || numero>60 || numeros.contains(numero)){
    if(numeros.contains(numero)){
      print('esse número já está no seu jogo. por favor, escolha outro número.');
    } else{
      print('número inválido. por favor, escolha outro número.');
    }
    numero = int.parse(stdin.readLineSync()!);
  }

  numeros.add(numero);

}

void jogo(){
  print("bem-vinda à mega sena!");
  for(int i = 0; i < 6; i++){
    pegarNumeroUsuario();
  }

    var numerosRandom = <int> [];
    while(numerosRandom.length != 6){
      int numeroRandom = Random().nextInt(10);
      if(!numerosRandom.contains(numeroRandom)){
        numerosRandom.add(numeroRandom);
      }
    }

   numeros.sort();
   numerosRandom.sort();

   print("números escolhidos: $numeros x números sorteados da mega sena: $numerosRandom");

   var match = <int> [];
   for(int a in numeros){
    if(numerosRandom.contains(a)){
      match.add(a);
    }
   }

    print("números que você acertou: $match");
    if(match.length >= 4){
      print("parabéns, você ganhou R\$50.000,00");
    }
   }
