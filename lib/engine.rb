class Engine < Board
  def input_number?(choice, player)
    choice.between?(1, 9) && player.between?(1, 2)
  end

  def spot_taken?(choice)
    @field[choice - 1] == 'x' or @field[choice - 1] == 'o'
  end

  def win?(player)
    mark = (player == 1 ? 'x' : 'o')
    @win_arr.each do |sub_array|
      return true if sub_array.all? { |element| @field[element] == mark }
    end
    false
  end

  def full_board?
    return true if @field.none?(Numeric)

    false
  end
end
