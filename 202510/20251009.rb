# 🧩 問題1（段階1：基本の配列操作）
# 次の配列があります。
# users = [
#   { name: "たかし", role: "general" },
#   { name: "ゆうこ", role: "admin" },
#   { name: "けんご", role: "general" }
# ]
#
# この配列を使って、role が "general" のユーザーだけ名前の末尾に「さん」をつけて
# 新しい配列で返すプログラムを書いてください。
#
# 期待する出力:
# ["たかしさん", "けんごさん"]

users = [
  { name: "たかし", role: "general" },
  { name: "ゆうこ", role: "admin" },
  { name: "けんご", role: "general" }
]

# ここにコードを書く
users = users.select{|user| user[:role] == "general"}.map{|user| "#{user[:name]}" + "さん"}
p users

# [ruby_practice (20251009)]% ruby 20291009.rb
# ["たかしさん", "けんごさん"]

# Sample
# users = users.select { |user| user[:role] == "general" }
#             .map { |user| "#{user[:name]}さん" }

############################################################################################

# 🧩 問題2（段階2：ハッシュ操作と条件分岐）
# 次の配列があります。
# users = [
#   { name: "たかし", age: 25, role: "general" },
#   { name: "ゆうこ", age: 32, role: "admin" },
#   { name: "けんご", age: 30, role: "general" }
# ]
#
# この配列を使って、role が "general" で age が 28 以上のユーザーの
# 名前の末尾に「さん」をつけて配列で返すプログラムを書いてください。
#
# 期待する出力:
# ["けんごさん"]

users = [
  { name: "たかし", age: 25, role: "general" },
  { name: "ゆうこ", age: 32, role: "admin" },
  { name: "けんご", age: 30, role: "general" }
]

# ここにコードを書く
users = users.select{|user| user[:age] >= 28 && user[:role] == "general"}
             .map{|user|"#{user[:name]}さん"}

p users

#["けんごさん"]