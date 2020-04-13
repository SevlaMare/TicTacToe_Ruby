class Engine < Board
  def input_number?(choice)
    choice.between?(1, 9)
  end

  def spot_taken?(choice)
    @field[choice - 1] == 'x' or @field[choice - 1] == 'o'
  end

  def win?(player)
    win_arr = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8],
      [0, 3, 6], [1, 4, 7], [2, 5, 8],
      [0, 4, 8], [2, 4, 6]
    ]

    mark = (player == 1 ? 'x' : 'o')
    win_arr.each do |sub_array|
      return true if sub_array.all? { |element| @field[element] == mark }
    end
    false
  end

  def full_board?
    return true if @field.none?(Numeric)

    false
  end
end
