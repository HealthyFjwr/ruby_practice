# 問題：
# 線形探索復習
# 配列の中で一番大きい数を出力してください。

numbers = [4, 10, 2, 8, 6, 34, 23412, 1, 5, 4, 624, 45235, 24562, 6562352, 2345, 345136, 1534236, 34523, 1235, 7341, 2345246, 234562412345]

# 期待する出力：
# 10

number = numbers[0]

numbers.each do |n|
  if number < n
    number = n
  end
end

p number

# 問題：
# 配列の中の重複を取り除いて出力してください。
# uniqメソッドなしで

numbers = [1, 2, 2, 3, 3, 3, 4, 5]

# 期待する出力：
# [1, 2, 3, 4, 5]

uniq_array = []

numbers.each do |n|
  unless uniq_array.include?(n)
    uniq_array << n
  end
end

p uniq_array

# 問題：
# 文字列の中で、各文字が何回出てくるか数えて出力してください。
# countメソッドは使用しないこと。

word = "banana"

# 期待する出力：
# {"b"=>1, "a"=>3, "n"=>2}

counts = {}

words = word.chars

words.each do |n|
  if counts[n]
    counts[n] = counts[n] + 1
  else
    counts[n] = 1
  end
end

p counts

# 問題：
# 配列の中で、一番多く出てくる要素とその出現回数を出力してください。
# count や tally メソッドは使用しないこと。

numbers = [3, 1, 2, 3, 4, 3, 2, 1, 1, 1]

# 期待する出力：
# 最も多い数: 1
# 出現回数: 4

num_counts = {}

numbers.each do |n|
  if num_counts[n]
    num_counts[n] = num_counts[n] + 1
  else
    num_counts[n] = 1
  end
end

# 出現回数をだす処理
counts = num_counts.values
max_count = counts[0]

counts.each do |c|
  if max_count < c
    max_count = c
  end
end

max_count_num = num_counts.key(max_count)

puts "最も多い数: #{max_count_num}"
puts  "出現回数: #{max_count}"

# 解答例
# ① Hash.new(0) で初期値を0にする
counts = Hash.new(0)

# ② 出現回数をカウント
numbers.each { |n| counts[n] += 1 }

# ③ 最大値を持つ要素を取得
max_num, max_count = counts.max_by { |_, v| v }

puts "最も多い数: #{max_num}"
puts "出現回数: #{max_count}"