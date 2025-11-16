# 問題：
# 次の配列の数字を、左から順に足していき、
# 合計が 10 を超えた時点で、その合計値を出力してください。
# each を使用すること。

numbers = [2, 3, 1, 5, 4]

# 期待する出力：
# 11   # ← 2 + 3 + 1 + 5 で初めて 10 を超える

sum = 0

numbers.each do |n|
  sum = sum + n
  if sum > 10
    p sum
    break
  end
end

# 問題：
# 次の配列に「7」が含まれているか調べ、
# 含まれている場合は true、含まれていない場合は false を出力してください。
# include? メソッドは使用しないこと。
# each を使って自分で判定すること。

numbers = [3, 1, 9, 4, 7, 8]

# 期待する出力：
# true

found = false

numbers.each do |n|
  if n == 7
    found = true
    break
  end
end

p found