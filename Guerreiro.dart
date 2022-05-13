import 'Personagem.dart';

class Guerreiro extends Personagem with Escudo, Espada {
  Guerreiro(
      String nome, int vida, int forcaFisica, int forcaMagica, int defesaBasica)
      : super(nome, vida, forcaFisica, forcaMagica, defesaBasica);

  void equiparEscudo() {
    this.defesaBasica += _escudo();
  }
}

mixin Escudo {
  int defesa = 5;

  int _escudo() {
    return defesa;
  }
}

mixin Espada {
  int ataque = 8;

  int espada() {
    return ataque;
  }
}
