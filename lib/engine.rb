class Engine < Board
  def input_number?(choice)
    choice.between?(1, 9)
  end

  # return true if spot is already taken
  def spot_taken?(choice)
    @field[choice - 1] == 'x' || @field[choice - 1] == 'o'
  end

  def win?(player)
    # TODO: check if is a winning move
    "\nPlayer #{player} Wins\nCongratulations!"
  end

  def draw
    # TODO: trigger after 9 moves no winner
  end
end
