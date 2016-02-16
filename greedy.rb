# This is a good example of the greedy algorithm.

=begin
stock_prices = [70,23,100,34,12,55,8,90,66,2,56,65]
In the array above, the prices above are in time-sequential order. Write a method that will
find the highest possible profit, you don't need the indices or actual prices...just have the method
return the highest possible profit. What is profit? Well it's buy - sell.
Note that if you were to pick two numbers to buy and sell, the buy needs to come first.
For example, you can buy 12 and sell 55 for a profit of +43 but you cannot buy 23 and sell 70 since
that is moving backwards in time. You also cannot buy 2 and sell 100 since that is also moving backwards in
time. Find the n^2 solution and the n solution.
=end

## get the max profit for the day.

# stock_prices_yesterday = [10, 7, 5, 8, 11, 9]   #max price should be 6
# stock_prices_yesterday = [14,12,8,2]   # max price should be -2
stock_prices_yesterday = [1]

def get_max_profit(stock_prices_yesterday)
  min_price = stock_prices_yesterday[0]   # starting price

  if stock_prices_yesterday.length < 2   # this needs to be above max_profit otherwise stock_prices_yetserday[1] will throw an error as nil:ilclass
    throw IndexError, "Stock prices need to contain at least 2 prices."
  end

  max_profit = stock_prices_yesterday[1] - stock_prices_yesterday[0]   # starting profit

  stock_prices_yesterday[1..-1].each do |current_price|
    potential_profit = current_price - min_price

    max_profit = [potential_profit, max_profit].max

    min_price = [min_price, current_price].min
  end
  max_profit
end

p get_max_profit(stock_prices_yesterday)
