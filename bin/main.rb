#!/usr/bin/env ruby

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

class Engine < Board
  def input_number?(choice)
    choice.between?(1, 9)
  end

  # return true if spot is already taken
  def spot_taken?(choice, player)
    @field[choice - 1] == 'x' || @field[choice - 1] == 'o'
  end

  def win?
    # TODO: check if is a winning move
    "\nPlayer #{player} Wins\nCongratulations!"
  end

  def draw
    # TODO: trigger after 9 moves no winner
  end
end

game = Engine.new
game.board_display

round = 0
while round <= 2
  (1..2).each do |i|
    player = i

    loop do
      puts("\nPlayer #{i} make your move\n(Choice between 1-9):")
      choice = STDIN.gets.chomp.to_i

      if game.input_number?(choice)
        unless game.spot_taken?(choice, player)
          game.board_update(choice, player)
          game.board_display
          break
        else
          puts "\nSpot already taken, try another"
        end
      end

    end
  end
  puts "end round #{round}"
  round += 1
end
puts "player 1 win"