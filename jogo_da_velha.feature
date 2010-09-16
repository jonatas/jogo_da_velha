# language: pt
Funcionalidade: Definir o vencedor de um jogo da velha
 Como um jogador expert em jogo da velha
 Eu quero saber se ganhei
 Pois preciso deste maravilhoso resultado

 Cenário: Eu ganhando na primeira coluna
  Dado que sou "o"
  Quando fizer o seguinte jogo
  """
   o | x | 
  ---+---+---
   o | x | x
  ---+---+---
   o |   |
  """
  Então sou o ganhador

 Cenário: Eu ganhando na primeira linha
  Dado que sou "o"
  Quando fizer o seguinte jogo
  """
   o | o | o
  ---+---+---
   x | x |  
  ---+---+---
   x |   |
  """
  Então sou o ganhador

 Cenário: Eu ganho na diagonal
  Dado que sou "o"
  Quando fizer o seguinte jogo
  """
   x | x | o
  ---+---+---
     | o |  
  ---+---+---
   o | x |  
  """
  Então sou o ganhador
  Quando fizer o seguinte jogo
  """
   o | x | x
  ---+---+---
     | o |  
  ---+---+---
     | x | o
  """
