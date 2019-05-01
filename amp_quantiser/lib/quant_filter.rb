class QuantFilter

  def initialize(freqs, steps)
    @freqs = freqs
    @steps = steps
  end

  def filter
    output = []
    @freqs.each do |freq|
      output << case freq % @steps
      when 0
        freq
      when 4
        freq + 1
      when 3
        freq + 2
      when 2
        freq - 2
      when 1
        freq - 1
      end
    end
    output
  end

end
