# 問題：
# 次の配列の中から偶数だけを取り出し、
# それらの合計を出力してください。
# select や sum メソッドは使用しないこと。
# each を使って自分でカウントすること。

numbers = [3, 6, 1, 8, 4, 5]

# 期待する出力：
# 18     # (6 + 8 + 4)

sum = 0


numbers.each do |n|
  if n % 2 == 0
    sum = sum + n
  end
end

p sum


# 問題：
# 次の配列から、最大値と最小値を取り除いたうえで、
# 残った数字の合計を出力してください。
# max, min, sum メソッドは使用しないこと。
# each を使って実装すること。

numbers = [5, 1, 8, 3, 10, 4]

# 期待する出力：
# 20   #（5 + 8 + 3 + 4）

min_number = numbers[0]
max_number = numbers[0]

numbers.each do |n|
  if n < min_number
    min_number = n
  elsif n > max_number
    max_number = n
  end
end

sum = 0

numbers.each do |n|
  unless n == max_number || n == min_number
    sum += n
  end
end

p sum

=begin

  numbers = [5, 1, 8, 3, 10, 4]

  min_number = numbers.min
  max_number = numbers.max

  sum = numbers
          .reject { |n| n == min_number || n == max_number }
          .sum
  p sum

=end