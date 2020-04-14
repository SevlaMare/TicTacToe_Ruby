require 'rspec/autorun' # vscode
# require_relative '../bin/main.rb'
require_relative '../lib/board.rb'
require_relative '../lib/engine.rb'

# describe engine do
RSpec.describe Engine do # vscode
  let(:game1) { Engine.new }
  let(:field1) { [1, 2, '3', 4, 5, 6, 7, 8, 9] }

  describe '#input_number?' do
    context 'Should not allow input out of range' do
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

    context 'Should not allow input non numeric' do
      it 'Last valid input' do
        expect(game1.spot_taken?(field1)).to eq(false)
      end
    end
  end
end
