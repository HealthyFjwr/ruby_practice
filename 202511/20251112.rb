# 問題：
# 次の配列の中から、偶数の要素だけを取り出し、
# さらにそれを2倍にして新しい配列として出力してください。

numbers = [1, 2, 3, 4, 5, 6, 7, 8]

# 期待する出力：
# [4, 8, 12, 16]

p numbers.select{|n|n.even?}.map{|n|n*2}


# 問題：
# 次の配列の中から、偶数だけを取り出して、
# それぞれを2倍にした新しい配列を作ってください。
# select と map メソッドは使用しないこと。

numbers = [1, 2, 3, 4, 5, 6, 7, 8]

# 期待する出力：
# [4, 8, 12, 16]

new_array = []

numbers.each do |n|
  if n.even?
    new_array << n * 2
  end
end

p new_array


# 問題：
# 次の配列の中で、一番大きい数と一番小さい数の差を求めてください。
# max や min メソッドは使用しないこと。

numbers = [10, 3, 7, 15, 2, 8]

# 期待する出力：
# 13   # （15 - 2 の差）

max_num = numbers[0]
min_num = numbers[0]


numbers.each do |n|
  if max_num < n
    max_num = n
  end
end

numbers.each do |n|
  if min_num > n
    min_num = n
  end
end

p max_num - min_num


# 問題：
# 次の配列の中で、「前の数より大きい数」だけを取り出して
# 新しい配列として出力してください。
# each_with_index メソッドを使用すること。

numbers = [3, 5, 2, 7, 6, 8, 1]

# 期待する出力：
# [5, 7, 8]

answer = []

numbers.each_with_index do |number, i|
  next if i == 0
  if number > numbers[i-1]
    answer << number
  end
end

p answer



# 問題：
# 次の配列の中で、「前の数よりも大きい連続の回数」を数えてください。
# つまり、数が前より大きくなるたびにカウントを1増やしてください。
# each_with_index を使用すること。

numbers = [3, 5, 2, 7, 6, 8, 1]

# 期待する出力：
# 3
# （5>3, 7>2, 8>6 の3回）

count = 0

numbers.each_with_index do |number, i|
  next if i == 0
  if number > numbers[i-1]
    count += 1
  end
end

p count

# 問題：
# 次の配列の中で、連続して「前より大きい数」が続く区間を配列として取り出し、
# それらをまとめて配列で出力してください。
# each_with_index を使用すること。

numbers = [3, 5, 2, 7, 6, 8, 9, 1]

# 期待する出力：
# [[3, 5], [2, 7], [6, 8, 9]]

numbers = [3, 5, 2, 7, 6, 8, 9, 1]

answer = []
temp = [numbers[0]]

numbers.each_with_index do |number, i|
  next if i == 0

  if number > numbers[i - 1]
    temp << number
  else
    answer << temp
    temp = [number]
  end
end

answer << temp

p answer