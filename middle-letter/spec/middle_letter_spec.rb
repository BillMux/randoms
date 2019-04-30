require_relative '../lib/middle_letter'

describe '#middle_letter' do
  it 'returns middle two chars when length is even' do
    expect(middle_letter('test')).to eq 'es'
  end

  it 'returns middle char when length is odd' do
    expect(middle_letter('testing')).to eq 't'
  end
end
