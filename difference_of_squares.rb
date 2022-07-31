require 'benchmark'
class Squares
  def initialize(n)
    @num = n
  end

  def square_of_sum
    sum = (1..@num).sum
    sq = sum * sum
  end

  def sum_of_squares
    (1..@num).map {|x| x * x }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
  # constants
  def constant_square_of_sum
    (@num * (@num + 1) / 2) ** 2
  end

  def constant_sum_of_squares
    @num * (@num + 1) * (2 * @num + 1) / 6
  end

  def constant_difference
    square_of_sum - sum_of_squares
  end
end

sq = Squares.new(6666)
n = 50000
Benchmark.bm do |benchmark|

  benchmark.report("Original square_of_sum") do
    n.times do
      sq.square_of_sum
      sq.sum_of_squares
      sq.difference
    end
  end

  benchmark.report("Constant square_of_sum") do
    n.times do
      sq.constant_square_of_sum
      sq.sum_of_squares
      sq.difference
    end
  end
end
