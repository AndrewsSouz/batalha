import 'dart:math';

import 'Personagem.dart';

class Batalha {
  bool fimDaBatalha = false;

  void batalhar(Personagem personagem1, Personagem personagem2) {
    var random = new Random();

    while (this.fimDaBatalha == false) {
      //personagem 1 = guerreiro, personagem 2 = mago
      //personagem1 ataca primeiro
      var rolagemAtaque = 0;

      rolagemAtaque = random.nextInt(personagem1.forcaFisica);
      personagem2.vida = personagem2.vida - rolagemAtaque;

      this.printaVida(personagem1, personagem2);

      this.fimDaBatalha = this.verificaFimDaBatalha(personagem2);

      if (this.fimDaBatalha == true) {
        break;
      }

      rolagemAtaque = random.nextInt(personagem2.forcaMagica);
      personagem1.vida = personagem1.vida - rolagemAtaque;

      this.printaVida(personagem1, personagem2);

      this.fimDaBatalha = this.verificaFimDaBatalha(personagem1);
    }
  }


  bool verificaFimDaBatalha(Personagem personagem) {
    if (personagem.vida <= 0) {
      return true;
    }
    return false;
  }



  void printaVida(Personagem personagem1, Personagem personagem2) {
    print(
        "Vida Gerreiro: ${personagem1.vida} \n Vida Mago: ${personagem2.vida}");
    print("\n");
  }
}
