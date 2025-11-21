# 問題（アルゴリズム）：
# 次の配列の中で、「連続して同じ数字が続く区間」を
# ひとまとめの配列にして取り出し、
# それらを配列として出力してください。
#
# 期待する出力：
# [[1, 1], [2], [3, 3, 3], [2, 2], [5]]

numbers = [1, 1, 2, 3, 3, 3, 2, 2, 5]

array = []
temp = [numbers[0]]

numbers.each_with_index do |number, i|
  next if i == 0

  if number == numbers[i - 1]
    temp << number
  else
    array << temp
    temp = [number]
  end
end

array << temp

p array