class Board
  def initialize
    @field = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @win_arr = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8],
      [0, 3, 6], [1, 4, 7], [2, 5, 8],
      [0, 4, 8], [2, 4, 6]
    ]
  end

  def board_display
    display =
      "\n #{@field[0]} | #{@field[1]} | #{@field[2]}"\
      "\n #{@field[3]} | #{@field[4]} | #{@field[5]}"\
      "\n #{@field[6]} | #{@field[7]} | #{@field[8]}"
    display
  end

  def board_update(choice, player)
    choice -= 1

    if player == 1
      @field[choice] = 'x'
    elsif player == 2
      @field[choice] = 'o'
    else
      false
    end
  end
end
