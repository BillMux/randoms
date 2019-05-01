require_relative '../lib/quant_filter'

describe QuantFilter do
  context 'with 5 steps' do
    subject { described_class.new([100, 84, 53, 72, 81], 5) }

    it 'multiples of 5 are not affected' do
      expect(subject.filter[0]).to eq 100
    end

    it 'numbers ending in 4 round up' do
      expect(subject.filter[1]).to eq 85
    end

    it 'numbers ending in 3 round up' do
      expect(subject.filter[2]).to eq 55
    end

    it 'numbers ending in 2 round down' do
      expect(subject.filter[3]).to eq 70
    end

    it 'numbers ending in 1 round down' do
      expect(subject.filter[4]).to eq 80
    end
  end

  context 'with 7 steps' do
    subject { described_class.new([100, 84, 53, 72, 81], 7) }

    it 'returns 98 for 100' do
      expect(subject.filter[0]).to eq 98
    end
  end
end
