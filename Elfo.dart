import 'Personagem.dart';

class Elfo extends Personagem with Arco {
  Elfo(String nome, int vida, int forcaFisica, int forcaMagica, int defesaBasica)
      : super(nome, vida, forcaFisica, forcaMagica, defesaBasica);
}

mixin Arco {
  int poder = 150;
  int magia = 150;
  int arco() {
    return poder + magia;
  }
}
