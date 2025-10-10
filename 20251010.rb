# 🧩 問題
# ある会社の社員データがあります。
# role が "engineer" の人だけを抽出し、
# さらに age が 30歳以上 の人の name だけを取り出して配列にしてください。
#
# 💡 期待する出力（例）
# ["鈴木", "中村"]

employees = [
  { name: "佐藤", age: 28, role: "engineer" },
  { name: "田中", age: 32, role: "designer" },
  { name: "鈴木", age: 35, role: "engineer" },
  { name: "山本", age: 41, role: "manager" },
  { name: "中村", age: 30, role: "engineer" }
]

# ここに処理を書く

p employees.select{|e| e[:role] == "engineer" && e[:age] >= 30}.map{|e| e[:name]}

########################################################################

# 🧩 問題
# 以下の users 配列から、
# 「大阪」出身 かつ 「active」が true のユーザーだけを抽出し、
# それぞれの名前の後ろに「さん」をつけた文字列配列を作ってください。
#
# 💡 期待する出力（例）
# ["田中さん", "中村さん"]

users = [
  { name: "田中", city: "大阪", active: true },
  { name: "鈴木", city: "東京", active: true },
  { name: "佐藤", city: "大阪", active: false },
  { name: "中村", city: "大阪", active: true },
  { name: "山本", city: "福岡", active: true }
]

# ここに処理を書く
p users.select{|user| user[:city] == "大阪" && user[:active] == true }.map{|user| "#{user[:name]}さん"}

########################################################################

# 🧩 問題
# 複数チームのメンバー情報があります。
# 各チームのメンバーの中から、年齢が30歳以上の人の名前だけを
# 平坦化（1次元の配列に）して取り出してください。
#
# 💡 期待する出力（例）
# ["田中", "中村", "高橋"]

teams = [
  [
    { name: "田中", age: 32 },
    { name: "佐藤", age: 27 }
  ],
  [
    { name: "中村", age: 30 },
    { name: "鈴木", age: 22 }
  ],
  [
    { name: "高橋", age: 45 },
    { name: "山本", age: 29 }
  ]
]

# ここに処理を書く

p teams.flatten.select{|team| team[:age] >= 30 }.map{|team| team[:name]}

# sample
# teams.flat_map { |team| team.select { |m| m[:age] >= 30 }.map { |m| m[:name] } }
## .flat_map => 1回で平坦化＋変換

