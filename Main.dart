import 'Batalha.dart';
import "Guerreiro.dart";
import "Mago.dart";
import 'Personagem.dart';

void main() {
  //Instanciando a classe de batalha
  Batalha batalha = new Batalha();

  //Variavel que verifica o fim da batalha
  var fimDaBatalha = false;

  //Instanciando os personagens
  Guerreiro guerreiro = Guerreiro('Hercules o Guerreiro', 20, 7, 0, 6);
  guerreiro.equiparEscudo(); //Adiciona a defesa do escudo a defesa basica do guerreiro

  Mago mago = Mago('Harry o Mago', 8, 0, 12, 4);

  //Define a lista de personagens que irão batalhar
  List<Personagem> personagens = [guerreiro, mago];

  do {
    //Inverte o os personagens da lista a cada turno para mudar o atacante
    var personagensInvertidos = _inverterPersonagens(personagens);

    //Se o defensor morrer na batalha, fimDaBatalha setara para true;
    fimDaBatalha = batalha.batalhar(personagensInvertidos);
  } while (fimDaBatalha == false); //Enquanto fim da batalha false continua executando
}


//Função de inverter os personagens
List<Personagem> _inverterPersonagens(List<Personagem> personagens) {
  var personagem = personagens[0];
  personagens[0] = personagens[1];
  personagens[1] = personagem;
  return personagens;
}

  //Elfo não será utilizado por enquanto
  // Elfo elfo = Elfo('Dobby', 7, 6, 6);

//PRINTS FICAM PARA OUTRO MOMENTO
  // print('O guerreiro se chama ${guerreiro.nome}, possui vida de ${guerreiro.vida} e poder de ${guerreiro.forcaFisica + guerreiro.forcaMagica}');
  // print('Ao ser equipado com o escudo sua vida aumenta em ${guerreiro.proteger()}');
  // print('Ao ser equipado com a espada seu poder aumenta em ${guerreiro.atacar()}');
  // print('');
  // print('O mago se chama ${mago.nome}, possui vida de ${mago.vida} e poder de ${mago.forcaFisica + mago.forcaMagica}');
  // print('Ao ser equipado com a varinha mágica seu poder aumenta em ${mago.magica()}');
  // print('');
  // print('O elfo se chama ${elfo.nome}, possui vida de ${elfo.vida} e poder de ${elfo.forcaFisica + elfo.forcaMagica}');
  // print('Ao ser equipado com o arco e flexa seu pdoer aumenta em ${elfo.ataque()}');
