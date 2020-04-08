#!/usr/bin/env ruby
puts("Welcome! Let's Play Tic Tac Toe")

# TODO: display board
puts('Board comming soon...')

puts('Player 1 - Type your alias: ')
player1 = STDIN.gets.chomp

puts('Player 2 - Type your alias: ')
player2 = STDIN.gets.chomp

puts('Ready to start!')

loop do
  puts("#{player1} make your move (1-9)")
  # TODO: check input
  # TODO: if valid, transfer choice to board, else ask again

  puts("#{player2} make your move (1-9)")
  # TODO: check input
  # TODO: if valid, transfer choice to board

  if state == 'end'
    # TODO: check if has a win or if board become full
    # otherwise play another match
    break
  end
end
