# main.rb 実装（別ファイルのクラスを使う練習）
#
# 前提：
# - 同じディレクトリに order.rb がある（Orderクラスは完成済み）
#
# main.rb で実装する機能（要件）：
#
# 1) order.rb を読み込む
require_relative "order"

#
# 2) 3つの注文データを作って Order インスタンスを作成する（配列に入れる）
#    - 注文A: price=1200, quantity=2, member=true
#    - 注文B: price=800,  quantity=1, member=false
#    - 注文C: price=1500, quantity=3, member=true

orders = [
  Order.new(price: 1200, quantity: 2, member: true),
  Order.new(price: 800, quantity: 1, member: false),
  Order.new(price: 1500, quantity: 3, member: true)
]

=begin
orders.each_with_index do |order, index|
  p "注文#{index + 1}: #{order}"
end
=end

#
# 3) 各注文について「1件ずつの合計金額」を計算して表示する
#    - 表示形式は必ずこれ：
#      "注文1: 2160円"
#      "注文2: 800円"
#      "注文3: 4050円"
orders.each_with_index do |order,index|
  puts "注文#{index+1}: #{order.total_price.to_i}円"
end

#
# 4) 3件分の「合計（グランドトータル）」も最後に表示する
#    - 表示形式は必ずこれ：
#      "合計: 7010円"
calculate_price = 0

orders.each do |order|
  calculate_price = calculate_price + order.total_price
end

puts "合計: #{calculate_price.to_i}円"

#
# 条件：
# - order.rb 側の private メソッドは main.rb から呼ばない（total_price だけ使う）
# - ループ（each など）を使って書くこと（同じ puts を3回コピペはNG）
#
# 期待する出力（この通りになればOK）：
# 注文1: 2160円
# 注文2: 800円
# 注文3: 4050円
# 合計: 7010円


totals = orders.map(&:total_price).map { |n| n.round } # 円として四捨五入（今回は .0 しか出ないけど）

totals.each_with_index do |total, i|
  puts "注文#{i + 1}: #{total}円"
end

grand_total = totals.sum
puts "合計: #{grand_total}円"