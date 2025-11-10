# 問題：
# 配列の中で一番大きい数を出力してください。

numbers = [4, 10, 2, 8, 6]

# 期待する出力：
# 10


max_num = numbers[0]

numbers.each do |n|
  if n > max_num
    max_num = n
  end
end

p max_num