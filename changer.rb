require 'pry'
class Changer

  def self.make_change(pennies)
    coins = [1, 5, 10, 25, 100, 200]
    change = []
    coins.reverse.each do |coin|
      if pennies >= coin

        changing = pennies.divmod(coin)

        changing[0].times do
          change << coin
          pennies -= coin
        end

      end
    end

    return change
  end
end
