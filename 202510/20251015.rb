# 🧩 問題
# 商品データの配列があります。
# 在庫(:stock)が1以上の商品の「合計価格(:price)」を求めてください。
#
# 💡 期待する出力（例）
# 4500  ← （1000 + 1500 + 2000）

items = [
  { name: "りんご", price: 1000, stock: 3 },
  { name: "みかん", price: 1500, stock: 1 },
  { name: "ぶどう", price: 2000, stock: 0 }
]

# ここに処理を書く
p items.select{|item| item[:stock] >= 1}.sum{|item| item[:price] * item[:stock]}

####################################################################################

# 🧩 問題
# 商品データがあります。
# 各カテゴリごとに在庫(:stock)×価格(:price)の合計を求めて、
# ハッシュで返してください。
#
# 💡 期待する出力（例）
# {"食品"=>4000, "飲料"=>3500, "雑貨"=>2000}

items = [
  { name: "りんご", category: "食品", price: 1000, stock: 2 },
  { name: "みかん", category: "食品", price: 500, stock: 4 },
  { name: "コーヒー", category: "飲料", price: 1000, stock: 3 },
  { name: "お茶", category: "飲料", price: 500, stock: 1 },
  { name: "ノート", category: "雑貨", price: 1000, stock: 2 }
]

# ここに処理を書く
p items.group_by{|item|item[:category]}.transform_values{|item| item.sum{|i| i[:price] * i[:stock]}}