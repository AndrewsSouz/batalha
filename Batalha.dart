import 'dart:math';

import 'Guerreiro.dart';
import 'Mago.dart';
import 'Personagem.dart';

class Batalha {
  bool fimDaBatalha = false;

  var random = new Random();

  bool batalhar(List<Personagem> personagens) {
    var ataqueClasse =
        _verificaClasse(personagens[0]); // Verifica classe e retorna o ataque

    var dano = _rolarDadoAtaque(ataqueClasse); //Rola o ataque

    personagens[1].vida -= dano; //Deduz da vida do personagem atacado

    _printaVida(personagens[0], personagens[1],
        dano); //Mostra os pontos de vida e dano da rodada

    return _verificaMorte(
        personagens[1]); // Verifica se o personagem defensor morreu
  }

  int _verificaClasse(Personagem personagem) {
    if (personagem is Guerreiro) {
      return personagem.forcaFisica;
    } else if (personagem is Mago) {
      return personagem.forcaMagica;
    } else {
      return personagem.forcaFisica + personagem.forcaMagica;
    }
  }

  int _rolarDadoAtaque(int dado) {
    return this.random.nextInt(dado);
  }

  bool _verificaMorte(Personagem personagem) {
    if (personagem.vida <= 0) {
      print("\n ${personagem.nome} morreu");
      return true;
    }
    return false;
  }

  void _printaVida(Personagem personagem1, Personagem personagem2, int dano) {
    print("\n");
    print("Atacante ${personagem1.nome} causou ${dano} pontos de dano ao Defensor ${personagem2.nome} \n");
    print(
        "${personagem1.nome} tem ${personagem1.vida} pontos de vida");
    print(
        "${personagem2.nome} tem ${personagem2.vida} pontos de vida");
  }
}
