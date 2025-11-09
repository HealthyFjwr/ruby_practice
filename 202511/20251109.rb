# 問題：
# 次の配列の中から、3文字以上の単語だけを取り出して
# 新しい配列として出力してください。

words = ["a", "on", "ruby", "cat", "go", "rails"]

# 期待する出力：
# ["ruby", "cat", "rails"]

p words.select{|n|n.length >= 3}

# 問題：
# 次の配列の中から、「r」で始まる単語だけを取り出して
# 新しい配列として出力してください。

words = ["ruby", "python", "rust", "go", "rails", "java"]

# 期待する出力：
# ["ruby", "rust", "rails"]

p words.select{|n| n.start_with?("r")}

# 問題：
# 次の配列の中から、同じ文字が2回以上出てくる単語だけを取り出して
# 新しい配列として出力してください。

words = ["apple", "dog", "banana", "sky", "coffee"]

# 期待する出力：
# ["apple", "banana", "coffee"]

p words.select{|n| n.chars.uniq.length < n.length}

# 問題：
# 次の配列の中から、3の倍数だけを取り出して
# 新しい配列として出力してください。

numbers = [4, 9, 12, 15, 22, 25, 30]

# 期待する出力：
# [9, 12, 15, 30]

p numbers.select{|n| n % 3 == 0}

# 問題：
# 次の配列の中の数をすべて2倍にして、
# 新しい配列として出力してください。

numbers = [1, 3, 5, 7, 9]

# 期待する出力：
# [2, 6, 10, 14, 18]

p numbers.map {|n| n * 2 }


# 問題：
# 1から20までの数字を順に出力してください。
# 3の倍数のときは「Fizz」
# 5の倍数のときは「Buzz」
# 両方のときは「FizzBuzz」と出力してください。

# 期待する出力（一部）：
# 1
# 2
# Fizz
# 4
# Buzz
# ...
# FizzBuzz

for i in 1..20
  if i % 5 == 0 && i % 3 == 0
    p "FizzBuzz"
  elsif i % 5 == 0
    p "Buzz"
  elsif i % 3 == 0
    p "Fizz"
  else
    p i
  end
end


