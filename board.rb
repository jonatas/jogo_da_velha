WHOLE_o_OR_x = /(o|x)\1{2}/
POSITIONS = (0..2)
def board(of_game)
  board = of_game.split("\n").collect do |line|
    line.gsub(/\s/,'').split("|") if line =~ /o|x/ 
  end.compact

  def board.rows
    self.select{|e|e.to_s}
  end
  def board.cols
    POSITIONS.collect do |y| 
      POSITIONS.collect do |x|
        self[x][y].to_s
      end
    end
  end
  def board.diagonals
    [POSITIONS, POSITIONS.to_a.reverse].collect do |range|
      range.collect do |x| 
        self[x][POSITIONS.last-x]
      end.to_s
    end 
  end
  def board.winner
    (rows + cols + diagonals ).each do |possibility| 
      return $1 if possibility.to_s =~ WHOLE_o_OR_x 
    end
  end
  board 
end
