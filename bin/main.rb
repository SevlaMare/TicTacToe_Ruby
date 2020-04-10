#!/usr/bin/env ruby

class Board
  # attr_accessor :field

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
    @field[choice] = player == 1 ? 'X' : 'O'
  end
end

class Engine < Board
  # (choice, player)
  def input_check(choice)
    true if choice.between?(1, 9) && @field[choice - 1] != 'X'
    # TODO: for the 2 round and on, need check which player is
  end

  def play_match
    # will check if has a winner
    'win'
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

    loop do
      choice = STDIN.gets.chomp.to_i
      # Basic check, should be a number 1-9
      if game.input_check(choice)
        game.board_update(choice, player)
        game.board_display
        break
      else
        puts 'Value Invalid, Try again (1-9):'
      end
    end
  end

  # CHECK WIN OR DRAW
  if game.play_match == 'win'
    puts("\nPlayer 1 Wins\nCongratulations!")
    play = false
  elsif play_match == 'draw'
    puts("\nIt's a draw!")
    play = false
  end
end
