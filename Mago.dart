import "Personagem.dart";

class Mago extends Personagem with VarinhaMagica {
  Mago(
      String nome, int vida, int forcaFisica, int forcaMagica, int defesaBasica)
      : super(nome, vida, forcaFisica, forcaMagica, defesaBasica);
}

mixin VarinhaMagica {
  int magia = 6 + 4;

  int varinhaMagica() {
    return magia;
  }
}
