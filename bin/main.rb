#!/usr/bin/env ruby
p("Welcome! Let's Play Tic Tac Toe")

# TODO: display board
p("Board comming soon...")

p("Player 1 - Type your alias: ")
player1 = STDIN.gets.chomp

p("Player 2 - Type your alias: ")
player2 = STDIN.gets.chomp

p("Ready to start!")

p("#{player1} make your move (1-9)")
# TODO: check input
# TODO: if valid, transfer choice to board


p("#{player2} make your move (1-9)")
# TODO: check input
# TODO: if valid, transfer choice to board

# TODO: match round to see if have a win or draw

# TODO: if win show victory, else next round