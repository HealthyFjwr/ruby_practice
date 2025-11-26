# 問題：
# 次の配列から、**3 文字以上の単語だけ**を取り出して
# 新しい配列として出力してください。
# select メソッドは禁止。
# each を使って自分で判定すること。

words = ["on", "cat", "a", "ruby", "go", "web"]

# 期待する出力：
# ["cat", "ruby", "web"]

array = []

words.each do |w|
  array << w if w.length >= 3
end

p array

# 問題：
# 次の配列から、「先頭と末尾の文字が同じ」単語だけを
# 新しい配列として取り出してください。
# select メソッドは禁止。
# each を使って自分で判定すること。

words = ["level", "apple", "noon", "dog", "radar", "web"]

# 期待する出力：
# ["level", "noon", "radar"]

array = []

words.each do |w|
  array << w if w[0] == w[-1]
end

p array

# 問題：
# 次の users 配列から、
# 「age が 20 以上」のユーザーだけを取り出して
# 新しい配列として出力してください。
# select は使用禁止。
# each を使って自分で絞り込むこと。

users = [
  {name: "田中", age: 18},
  {name: "鈴木", age: 25},
  {name: "佐藤", age: 30},
  {name: "山田", age: 12}
]

# 期待する出力：
# [{name: "鈴木", age: 25}, {name: "佐藤", age: 30}]

array = []
users.each do |user|
  array << user if user[:age] >= 20
end

p array