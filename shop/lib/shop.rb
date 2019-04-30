class Shop
  def checkout(items)
    return -1 unless items.is_a? String
    return -1 if items != items.upcase || items =~ /\d/

    @cost = 0
    items.chars.each { |item| calc(item) }
    special_offer(items)
    @cost
  end

  private

  def special_offer(items)
    @cost -= 20 * (items.count('A') / 3)
    @cost -= 15 * (items.count('B') / 2)
  end

  def calc(item)
    @cost += case item
    when 'A'
      50
    when 'B'
      30
    when 'C'
      20
    when 'D'
      15
    end
  end
end
