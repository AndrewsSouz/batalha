import 'Batalha.dart';
import "Guerreiro.dart";
import "Mago.dart";
import "Elfo.dart";

void main() {
  Guerreiro guerreiro = Guerreiro('Hercules', 10, 10, 0);

  Mago mago = Mago('Harry', 5, 0, 15);

  //Elfo não será utilizado
  // Elfo elfo = Elfo('Dobby', 7, 6, 6);

  Batalha batalha = new Batalha();
  batalha.batalhar(guerreiro, mago);

  // print('O guerreiro se chama ${guerreiro.nome}, possui vida de ${guerreiro.vida} e poder de ${guerreiro.forcaFisica + guerreiro.forcaMagica}');
  // print('Ao ser equipado com o escudo sua vida aumenta em ${guerreiro.proteger()}');
  // print('Ao ser equipado com a espada seu poder aumenta em ${guerreiro.atacar()}');
  // print('');
  // print('O mago se chama ${mago.nome}, possui vida de ${mago.vida} e poder de ${mago.forcaFisica + mago.forcaMagica}');
  // print('Ao ser equipado com a varinha mágica seu poder aumenta em ${mago.magica()}');
  // print('');
  // print('O elfo se chama ${elfo.nome}, possui vida de ${elfo.vida} e poder de ${elfo.forcaFisica + elfo.forcaMagica}');
  // print('Ao ser equipado com o arco e flexa seu pdoer aumenta em ${elfo.ataque()}');
}
