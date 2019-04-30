require_relative '../lib/shop'

describe Shop do
  it 'returns -1 when receives lower case letters' do
    expect(subject.checkout('aBc')).to eq(-1)
  end

  it 'returns -1 when receives numbers in string' do
    expect(subject.checkout('AB8C')).to eq(-1)
  end

  it 'returns -1 when receives integer' do
    expect(subject.checkout(3)).to eq(-1)
  end

  context 'add to cost' do
    it '50 for every "A"' do
      expect(subject.checkout('A')).to eq 50
      expect(subject.checkout('AA')).to eq 100
    end

    it '30 for every "B"' do
      expect(subject.checkout('B')).to eq 30
    end

    it '20 for every "C"' do
      expect(subject.checkout('C')).to eq 20
      expect(subject.checkout('CC')).to eq 40
    end

    it '15 for every "D"' do
      expect(subject.checkout('D')).to eq 15
      expect(subject.checkout('DD')).to eq 30
    end
  end

  context 'special offer' do
    it '3A for 130' do
      expect(subject.checkout('AAA')).to eq 130
      expect(subject.checkout('AAAAAA')).to eq 260
    end

    it '2B for 45' do
      expect(subject.checkout('BB')).to eq 45
      expect(subject.checkout('BBBB')).to eq 90
    end
  end
end
