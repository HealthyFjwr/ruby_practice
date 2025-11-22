# 問題（アルゴリズム：探索）：
# 次の配列の中で、最大の数を自分で探して出力してください。
# max メソッドは使用しないこと。
# each を使って自分で最大値を判定すること。

numbers = [3, 10, 4, 7, 1, 9, 2]

# 期待する出力：
# 10

max_num = numbers[0]

numbers.each do |n|
  if n > max_num
    max_num = n
  end
end

p max_num


# 問題（ステップアップ：アルゴリズム・探索＋条件分岐）：
# 次の配列の中で、
# 「最も多く出てくる数字（＝最頻値）」を求めて出力してください。
#
# tally や group_by は使用しないこと。
# 自分でカウント処理を書いて解いてください。
#
numbers = [3, 1, 3, 2, 5, 1, 3, 2, 1, 1]

# 期待する出力：
# 1

hash = {}

numbers.each do |n|
  if hash[n]
    hash[n] += 1
  else
    hash[n] = 1
  end
end

#max_count = hash.values.max

p hash.key(hash.values.max)