#!/usr/bin/env ruby
require_relative '../lib/board.rb'
require_relative '../lib/engine.rb'

game = Engine.new
game.board_display

round = 0 # WIN OR DRAW SHOULD STOP THE LOOP
while round <= 1
  (1..2).each do |i|
    player = i

    loop do
      puts("\nPlayer #{i} make your move\n(Choice between 1-9):")
      choice = STDIN.gets.chomp.to_i

      if game.input_number?(choice)
        if !game.spot_taken?(choice)
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
puts 'player 1 win'
