require "net/http"
require "json"
require 'uri'



# 問題：
# Chuck Norris API にアクセスして
# ランダムなジョークを1つ取得し
# ジョーク本文だけを puts で表示せよ
#
# 期待する出力例：
# Chuck Norris can divide by zero.

# ↓ ここから書く ↓

uri = URI("https://api.chucknorris.io/jokes/random")

response = Net::HTTP.get_response(uri)

v = JSON.parse(response.body)

puts v["value"]


