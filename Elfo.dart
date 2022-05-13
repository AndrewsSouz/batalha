import 'Personagem.dart';

class Elfo extends Personagem with arcoEflexa {
  Elfo(String nome, int vida, int forcaFisica, int forcaMagica)
      : super(nome, vida, forcaFisica, forcaMagica);
}

mixin arcoEflexa {
  int poder = 150;
  int magia = 150;
  int ataque() {
    return poder + magia;
  }
}
