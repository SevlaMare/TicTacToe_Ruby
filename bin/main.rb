#!/usr/bin/env ruby

puts("#{' ' * 6}Welcome!\nLet's Play Tic Tac Toe")

class Board
  attr_accessor :field

  def initialize
    @field = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display_board(field = @field)
    puts(
      "\n #{field[0]} | #{field[1]} | #{field[2]}"\
      "\n #{field[3]} | #{field[4]} | #{field[5]}"\
      "\n #{field[6]} | #{field[7]} | #{field[8]}"
    )
  end
end

game1 = Board.new
game1.display_board
