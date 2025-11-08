# 問題：
# 次の配列の中から、文字数が4文字以上の単語だけを取り出して
# 新しい配列として出力してください。

words = ["cat", "dog", "rabbit", "fox", "elephant"]

# 期待する出力：
# ["rabbit", "elephant"]

p words.select{|n|n.length >= 4}


# 問題：
# 次の配列の中から、偶数の数だけを2倍にして
# 新しい配列として出力してください。

numbers = [1, 2, 3, 4, 5, 6]

# 期待する出力：
# [1, 4, 3, 8, 5, 12]

numbers.map! do |n|
  if n.even?
    n * 2
  else
    n
  end
end

p numbers

# 問題：
# 次の配列の中から、同じ文字が2つ以上含まれている単語だけを取り出して
# 新しい配列として出力してください。

words = ["apple", "dog", "banana", "sky", "coffee"]

# 期待する出力：
# ["apple", "banana", "coffee"]

p words.select{|n| n.chars.uniq.length < n.length}