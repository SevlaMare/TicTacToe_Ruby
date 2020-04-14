require 'rspec/autorun' # vscode
# require_relative '../bin/main.rb'
require_relative '../lib/board.rb'
require_relative '../lib/engine.rb'

# describe engine do
RSpec.describe Engine do # vscode
  let(:game1) { Engine.new }
  let(:field_win) { ['x', 'x', 'x', 4, 5, 6, 7, 8, 9] }

  describe '#Class Board' do
    context 'Display Board' do
      it 'Should display the board' do
        expect(game1.board_display)
          .to eq("\n 1 | 2 | 3\n 4 | 5 | 6\n 7 | 8 | 9")
      end
    end

    context 'Update Board' do
      it 'Player 1 can update the board' do
        expect(game1.board_update(1, 1))
          .to eq('x')
      end

      it 'Player 2 can update the board' do
        expect(game1.board_update(1, 2))
          .to eq('o')
      end
    end
  end

  describe 'Class Engine' do
    context '#input_number?' do
      it 'First valid input' do
        expect(game1.input_number?(1))
          .to eq(true)
      end

      it 'Last valid input' do
        expect(game1.input_number?(9))
          .to eq(true)
      end

      it 'First invalid input' do
        expect(game1.input_number?(0))
          .to eq(false)
      end

      it 'First from last invalid input' do
        expect(game1.input_number?(10))
          .to eq(false)
      end
    end

    context '#spot_taken?' do
      it 'First valid input' do
        expect(game1.spot_taken?(1))
          .to eq(false)
      end
    end

    context '#win?' do
      it 'First valid input' do
        expect(game1.win?(1))
          .to eq(false)
      end
    end

    context '#full_board?' do
      it 'The board should not be full' do
        expect(game1.full_board?)
          .to eq(false)
      end
    end
  end
end
