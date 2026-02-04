# 問題：実務でよく使うクラスとメソッド

# 以下は、APIやDBから取得した「レストラン一覧」を想定したデータです。
restaurants = [
  { name: "大阪王将", area: "梅田", is_chain: true,  rating: 3.5 },
  { name: "来来亭",   area: "難波", is_chain: true,  rating: 3.8 },
  { name: "萬福飯店", area: "梅田", is_chain: false, rating: 4.2 },
  { name: "幸福軒",   area: "天王寺", is_chain: false, rating: 4.0 },
  { name: "餃子楼",   area: "梅田", is_chain: false, rating: 3.9 }
]

# Q1.
# チェーン店ではない（is_chain: false）レストランだけを対象にして、
# 「店名（name）」だけの配列を作ってください。
#
# 期待する出力例：
# ["萬福飯店", "幸福軒", "餃子楼"]

q1 = []
q1 = restaurants.select{|i| i[:is_chain] == false}
                .map{|i|i[:name]}

p q1


# Q2.
# Q1で対象にしたレストランの中から、
# rating が 4.0 以上の店だけを残してください。
#
# 期待する出力例：
# [
#   { name: "萬福飯店", area: "梅田", is_chain: false, rating: 4.2 },
#   { name: "幸福軒",   area: "天王寺", is_chain: false, rating: 4.0 }
# ]

q2 = restaurants.select{|i| i[:is_chain] == false && i[:rating] >= 4.0}

p q2

# Q3.
# レストランを area ごとにグループ化してください。
#
# 期待する出力例：
# {
#   "梅田" => [
#     { name: "大阪王将", area: "梅田", is_chain: true, rating: 3.5 },
#     { name: "萬福飯店", area: "梅田", is_chain: false, rating: 4.2 },
#     { name: "餃子楼",   area: "梅田", is_chain: false, rating: 3.9 }
#   ],
#   "難波" => [...],
#   "天王寺" => [...]
# }

q3 = restaurants.group_by{|i| i[:area]}
p q3

# Q4.
# 全レストランの平均 rating を計算してください。
# （小数点第2位まででOK）
#
# 期待する出力例：
# 3.88


array = restaurants.map{|i|i[:rating]}
q4 = array.sum.fdiv(array.length).round(2)

p q4