# 問題
# 配列 numbers から「偶数だけ」を取り出して
# 新しい配列にして出力してください。
#
# ただし、select メソッドは使用しないこと。
#
# 期待する出力:
# [2, 4, 6]

numbers = [1, 2, 3, 4, 5, 6]

evens= []

numbers.each do |i|
  evens << i if i.even?
end
p evens

# 問題
# 文字列 str の中で
# 「a」が何回出てくるか数えてください。
#
# count メソッドは使用しないこと。
#
# 期待する出力:
# 3

str = "banana"

count = 0

str = str.split("")

str.each do |s|
  count += 1 if s == "a"
end
p count

# 問題
# 配列から「重複」を取り除いた配列を作ってください。
#
# uniq メソッドは禁止。
#
# 期待する出力:
# [1, 2, 3, 4]

numbers = [1, 2, 2, 3, 4, 3, 1]

array =[]

numbers.each do |num|
  array << num if !array.include?(num)
end

p array

# 問題
# 配列の中で「2番目に大きい数」を求めてください。
#
# sort / max / uniq 禁止
#
# 期待する出力:
# 12

numbers = [5, 12, 3, 20, 8]

n = numbers.length

(n - 1).times do
  (n - 1).times do |i|
    if numbers[i] > numbers[i + 1]
      numbers[i], numbers[i + 1] = numbers[i + 1], numbers[i]
    end
  end
end

p numbers[n - 2]