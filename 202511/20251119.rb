# 問題：
# 次の配列から、文字列の長さが3文字以下のものだけを取り出して
# 新しい配列として出力してください。

words = ["cat", "apple", "go", "ruby", "on", "dog"]

# 期待する出力：
# ["cat", "go", "on", "dog"]

array = []

words.each do |w|
  if w.length <= 3
    array << w
  end
end

p array

# 問題：
# 次の配列から、5より大きい数字だけを取り出して
# 新しい配列として出力してください。
# select は使ってもOK

numbers = [1, 8, 3, 10, 5, 7, 2]

# 期待する出力：
# [8, 10, 7]

p numbers.select{ |n| n > 5 }


# 問題：
# 次の文字列を、1文字ずつ配列に分解して出力してください。
# split や chars を使っても使わなくてもOK

text = "ruby"

# 期待する出力：
# ["r", "u", "b", "y"]

p text.split("")

# p text.chars
