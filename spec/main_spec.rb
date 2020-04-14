require_relative '../lib/board.rb'
require_relative '../lib/engine.rb'

describe Engine do
  let(:game1) { Engine.new }

  describe '#Class Board' do
    context 'Start' do
      it 'Display the board at start' do
        expect(game1.board_display)
          .to eq("\n 1 | 2 | 3\n 4 | 5 | 6\n 7 | 8 | 9")
      end
    end

    context 'Update Board' do
      it 'Update the board from player 1' do
        expect(game1.board_update(1, 1))
          .to eq('x')
      end

      it 'Update the board from player 2' do
        expect(game1.board_update(1, 2))
          .to eq('o')
      end

      it 'Update the board from random player not allowed' do
        expect(game1.board_update(1, 3))
          .to eq(false)
      end
    end
  end

  describe 'Class Engine' do
    context '#input_number?' do
      it 'Accept number in range 1-9 as valid input' do
        expect(game1.input_number?(1, 1))
          .to eq(true)
      end

      it 'Accept number in range 1-9 as valid input' do
        expect(game1.input_number?(9, 2))
          .to eq(true)
      end

      it 'Block numbers outside of range 1-9' do
        expect(game1.input_number?(0, 1))
          .to eq(false)
      end

      it 'Block numbers outside of range 1-9' do
        expect(game1.input_number?(10, 2))
          .to eq(false)
      end
    end

    context '#spot_taken?' do
      it 'Return false if spot is not taken' do
        expect(game1.spot_taken?(1))
          .to eq(false)
      end

      it 'Return true if spot is already taken' do
        game1.instance_variable_set(:@field, ['x', 'x', 'x', 4, 5, 6, 7, 8, 9])
        expect(game1.spot_taken?(1))
          .to eq(true)
      end
    end

    context '#win?' do
      it 'Return false if don`t have a winner' do
        expect(game1.win?(1))
          .to eq(false)
      end

      it 'Return true if spot is already taken' do
        game1.instance_variable_set(:@field, ['x', 'x', 'x', 4, 5, 6, 7, 8, 9])
        expect(game1.spot_taken?(1))
          .to eq(true)
      end
    end

    context '#full_board?' do
      it 'Return true if board is not full' do
        expect(game1.full_board?)
          .to eq(false)
      end

      it 'Return true if board is full' do
        game1.instance_variable_set(:@field, %w[x o x o x o x o x])
        expect(game1.full_board?)
          .to eq(true)
      end
    end
  end
end
