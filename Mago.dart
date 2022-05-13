import "Personagem.dart";

class Mago extends Personagem with varinhaMagica{
 Mago (String nome, int vida, int forcaFisica, int forcaMagica)
 : super (nome, vida, forcaFisica, forcaMagica);


}

mixin varinhaMagica{
 
 int magia = 250;
 
 int magica(){
 return magia;
 }
 }