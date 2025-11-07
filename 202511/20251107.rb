# 問題：
# 次の配列から、「ra」を含む文字列だけを取り出して
# 新しい配列にして出力してください。

words = ["ramen", "sushi", "karaage", "grape", "orange", "rice"]

# 期待する出力：
# ["ramen", "karaage", "grape"]

p words.select{|n|n.include?("ra")}


# 問題：
# 次の配列から、
# 「5 以上 15 以下」の数だけを取り出して
# 新しい配列にして出力してください。

numbers = [3, 5, 8, 12, 15, 18, 1, 7, 14]

# 期待する出力：
# [5, 7, 8, 12, 14, 15]

p numbers.select{|n| n >= 5 && n <= 15}.sort


# 問題：
# 次の配列から、
# 「20〜50の範囲に含まれる」数だけを取り出して
# 新しい配列にして出力してください。

numbers = [10, 20, 35, 49, 50, 55, 60, 19, 33, 51]

# 期待する出力：
# [20, 33, 35, 49, 50]

p numbers.select{|n| (20..50).include?(n)}.sort


# 問題：
# 次の配列の中から、
# 「name に '田中' を含む人」だけを取り出して
# 新しい配列にして出力してください。

people = [
  { name: "田中太郎", age: 25 },
  { name: "山田花子", age: 30 },
  { name: "田中次郎", age: 20 },
  { name: "佐藤健", age: 28 }
]

# 期待する出力：
# [{:name=>"田中太郎", :age=>25}, {:name=>"田中次郎", :age=>20}]

p people.select{|n| n[:name].include?("田中")}#.map{|i| i[:name],i[:age]}

# 問題：
# 次の配列の中から、
# 「name に '田中' を含み、かつ age が 25 以上」の人だけを取り出して
# 新しい配列にして出力してください。

people = [
  { name: "田中太郎", age: 25 },
  { name: "山田花子", age: 30 },
  { name: "田中次郎", age: 20 },
  { name: "佐藤健", age: 28 },
  { name: "田中三郎", age: 40 }
]

# 期待する出力（Ruby 3.4.1）：
# [{:name=>"田中太郎", :age=>25}, {:name=>"田中三郎", :age=>40}]

p people.select{|n| n[:name].include?("田中") && n[:age] >= 25}