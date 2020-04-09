#!/usr/bin/env ruby

puts("Welcome! Let's Play Tic Tac Toe\n\n")

# TODO: display board
puts("Board comming soon...\n\n")

puts('Player 1 - Type your alias:')
player1 = STDIN.gets.chomp

puts('Player 2 - Type your alias:')
player2 = STDIN.gets.chomp

puts("\n\nReady to start!")

loop do
  puts("#{player1} make your move (1-9)")
  # TODO: check input
  # TODO: if valid, transfer choice to board, else ask again

  puts("#{player2} make your move (1-9)")
  # TODO: check input
  # TODO: if valid, transfer choice to board

  puts("\n\n")
  # TODO: check if has a win or if board become full
  # otherwise play another match
  # break if win || full
  break
end

puts('The End')
# TODO: display winner
puts('You want start a new round?')
# TODO: start again or exit
