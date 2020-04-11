class Board
  def initialize
    @field = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def board_display
    puts(
      "\n #{@field[0]} | #{@field[1]} | #{@field[2]}"\
      "\n #{@field[3]} | #{@field[4]} | #{@field[5]}"\
      "\n #{@field[6]} | #{@field[7]} | #{@field[8]}"
    )
  end

  def board_update(choice, player)
    choice -= 1
    @field[choice] = (player == 1 ? 'x' : 'o')
  end
end
