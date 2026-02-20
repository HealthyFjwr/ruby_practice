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