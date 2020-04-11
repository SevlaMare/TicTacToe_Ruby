#!/usr/bin/env ruby

# TODO: implement private attributes wherever is possible
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
    @field[choice] = player == 1 ? 'x' : 'o'
  end
end

class Engine < Board
  def input_number(choice)
    true if choice.between?(1, 9)
  end

  # return true if spot is already taken
  def input_spot(choice, player)
    spot = player == 2 ? 'x' : 'o'
    # @field[choice - 1] == spot ? true : false
    @field[choice - 1] == spot
  end

  def win_or_draw
    "\nPlayer #{player} Wins\nCongratulations!"
  end
end

# MAIN GAME LOOP
play = true
while play
  puts("\n#{' ' * 6}Welcome!\nLet's Play Tic Tac Toe")

  # BUILD GAME MATCH
  game = Engine.new
  game.board_display

  # PLAY ROUND
  (1..2).each do |i|
    player = i
    puts("\nPlayer #{i} make your move\n(Choice between 1-9):")

    ask_input = true
    while ask_input
      choice = STDIN.gets.chomp.to_i

      if game.input_number(choice)
        game.input_spot(choice, player)

        # TODO: say if is a draw MOVE
        game.board_update(choice, player)
        game.board_display

        # TODO: show who win
        play = false
        ask_input = false
      else
        puts 'Value Invalid, Try again (1-9):'
      end
    end
  end
end
