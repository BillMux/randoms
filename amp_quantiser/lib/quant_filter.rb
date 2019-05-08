class QuantFilter

  def initialize(freqs, steps)
    @freqs = freqs
    @steps = steps
  end

  def filter
    output = []
    @freqs.each do |freq|
      mod = freq % @steps
      half = @steps / 2

      output << if mod > half
        freq + (@steps - mod)
      elsif mod <= half
        freq - mod
      end
    end
    output
  end

end
