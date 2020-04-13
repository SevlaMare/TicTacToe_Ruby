class Engine < Board
  def input_number?(choice)
    choice.between?(1, 9)
  end

  # return true if spot is already taken
  def spot_taken?(choice)
    @field[choice - 1] == 'x' || @field[choice - 1] == 'o'
  end

  def win?(player)
    win = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], # i
      [0, 3, 6], [1, 4, 7], [2, 5, 8], # j
      [0, 4, 8], [2, 4, 6] # i, j
    ]

    mark = (player == 1 ? 'x' : 'o')
    win.each do |sub_array|
      return true if sub_array.all? { |element| @field[element] == mark }
    end
    false
  end

  def full_board?
    # TODO: trigger after 9 moves no winner
  end
end
