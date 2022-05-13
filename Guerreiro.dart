import 'Personagem.dart';

class Guerreiro extends Personagem with escudo, espada{
 Guerreiro (String nome, int vida, int forcaFisica, int forcaMagica)
 : super (nome, vida, forcaFisica, forcaMagica);
 
}

mixin escudo{
 int defesa = 200;
 
 int proteger(){
 return defesa;
 }
}
mixin espada{
 int ataque = 350;
 
 int atacar(){
 return ataque;
 
 }
}