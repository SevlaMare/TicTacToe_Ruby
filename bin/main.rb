#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/engine.rb'

game = Engine.new
puts game.board_display

play = true
while play
  (1..2).each do |i|
    player = i

    loop do
      puts("\nPlayer #{i} make your move\n(Choice between 1-9):")
      choice = STDIN.gets.chomp.to_i

      if game.input_number?(choice)
        if !game.spot_taken?(choice)
          game.board_update(choice, player)
          puts game.board_display
          break
        else
          puts "\nSpot already taken, try another"
        end
      end
    end

    if game.win?(player)
      play = false
      puts("\nWin! Congratulations Player #{player}")
      break
    elsif game.full_board?
      play = false
      puts("\nDraw, due full board")
      break
    end
  end
end
