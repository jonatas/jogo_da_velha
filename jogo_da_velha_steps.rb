Dado /^que sou "([^\"]*)"$/ do |o_ou_x|
  @meu_sinal = o_ou_x
end
Quando /^fizer o seguinte jogo$/ do |of_game|
  @board = board(of_game)
end
Entao /^sou o ganhador$/ do
  @board.winner.should == @meu_sinal
end
