# 🧩 問題
# 商品データの配列があります。
# それぞれの商品の category ごとに商品名をまとめたハッシュを作ってください。
#
# 💡 期待する出力（例）
# {
#   "食品" => ["りんご", "みかん"],
#   "飲料" => ["コーヒー", "お茶"],
#   "雑貨" => ["ノート"]
# }

items = [
  { name: "りんご", category: "食品" },
  { name: "コーヒー", category: "飲料" },
  { name: "ノート", category: "雑貨" },
  { name: "みかん", category: "食品" },
  { name: "お茶", category: "飲料" }
]

# ここに処理を書く
p items.group_by{|item|item[:category]}
p items.group_by{|item|item[:category]}.transform_values{|array|array.map{|i|i[:name]}}

