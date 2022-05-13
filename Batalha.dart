import 'dart:math';

import 'Elfo.dart';
import 'Guerreiro.dart';
import 'Mago.dart';
import 'Personagem.dart';

class Batalha {
  var random = new Random(); //Classe com função para rolar o dado

  int d20 = 20; //Dado de 20 lados

  bool batalhar(List<Personagem> personagens) {
    //Definindo o atacante e defensor pra ficar mais claro
    var atacante = personagens[0];
    var defensor = personagens[1];

    print("\n\n${atacante.nome} ataca e ${defensor.nome} defende neste turno!");
    print("${atacante.nome} tenta atacar");

    if (_rolarSucessoAtaque(defensor.defesaBasica)) {
      print("\n Sucesso!!!");
      var dano = _rolaDanoClasse(atacante); //Rola o dano de acordo com a classe

      print("\n${atacante.nome} rolou dano de ${dano}"); //Mostra a rolagem de dano

      defensor.vida -= dano; //Deduz da vida do personagem atacado

      print("${atacante.nome} causou ${dano} pontos de dano em ${defensor.nome}"); //Mostra os pontos de dano causados
    } else { //Se o ataque não tiver sucesso executa o else
      print("\n${atacante.nome} errou!");
    }

    _printaVida(atacante, defensor); //Mostra os pontos de vida e dano da rodada
    return _verificaMorte(defensor); // Verifica se o personagem defensor morreu
  }

  //Rola um dado de 20 lados para definir se o ataque obteve sucesso
  bool _rolarSucessoAtaque(int defesa) {
    var rolagem = _rolarDado(d20);
    print("\nRolagem: ${rolagem}");
    print("Defesa: ${defesa}");

    return rolagem > defesa; //Rolagem maior que defesa?
  }

  //Rola um numero aleatório com base no ataque da arma e adiciona o poder de ataque base da classe
  int _rolaDanoClasse(Personagem personagem) {
    if (personagem is Guerreiro) {
      return personagem.forcaFisica + _rolarDado(personagem.espada());
    } else if (personagem is Mago) {
      return personagem.forcaMagica + _rolarDado(personagem.varinhaMagica());
    } else if (personagem is Elfo) {
      return personagem.forcaFisica +
          personagem.forcaMagica +
          _rolarDado(personagem.arco());
    } else {
      return 0;
    }
  }

  //Somente define um numero aleatório com base no valor passado
  int _rolarDado(int dado) {
    return this.random.nextInt(dado);
  }

  //Verifica se a vida do personagem chegou a zero
  bool _verificaMorte(Personagem personagem) {
    if (personagem.vida <= 0) {
      print("\n ${personagem.nome} morreu");
      return true;
    }
    return false;
  }

  //Mostra a vida dos personagens
  void _printaVida(Personagem atacante, Personagem defensor) {
    print("\n${atacante.nome} tem ${atacante.vida} pontos de vida");
    print("${defensor.nome} tem ${defensor.vida} pontos de vida");
  }
}
