require 'parser'

describe Parser do

  subject(:parser) { described_class.new }

  context 'when created' do

    it 'instantiates with an empty array' do
      expect(parser.instance_variable_get(:@available_slots)).to eq []
    end

    it 'parses JSON times into Ruby hash' do
      parser.load_hash
      expect(parser.instance_variable_get(:@available_slots)).to include("08:00:00")
    end
  end
end
