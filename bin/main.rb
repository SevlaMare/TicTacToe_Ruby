#!/usr/bin/env ruby

puts("Welcome! Let's Play Tic Tac Toe\n\n")

# TODO: class board (to be displayed)
puts("Board comming soon...\n\n")

# TODO: class player
# Start interface - get players alias
# player x is a class attribute
puts('Player 1 - Type your alias:')
player1 = STDIN.gets.chomp

puts('Player 2 - Type your alias:')
player2 = STDIN.gets.chomp

puts("\n\nReady to start!")

# Get moves and trasfer to process in a class game engine
loop do
  puts("#{player1} make your move (1-9)")
  # TODO: check input using external class
  # TODO: if valid, transfer choice to board, else ask again

  puts("#{player2} make your move (1-9)")
  # TODO: check input using external class
  # TODO: if valid, transfer choice to board, else ask again

  puts("\n\n")
  # TODO: class to check if has a win or if board become full
  # break if win || full
  break
end

# Trigger when game end (comes from class engineclear)
puts('The End')
# TODO: display winner (method from class player)
puts('You want start a new round?')
# TODO: start again or exit

# Extra features (if don't take too much time)
# score of all rounds played
# save scores option
