require "net/http"
require "json"
require "uri"

# https://api.chucknorris.io/jokes/random

# 問題①
# Chuck Norris API にアクセスせよ
#
# 条件：
# 1. ステータスコードが 200 のとき
#    → ジョーク本文（value）を表示する
#
# 2. ステータスコードが 200 以外のとき
#    → "APIエラー: ステータスコード XXX" と表示する
#
# 3. 通信や JSON.parse で例外が起きたとき
#    → "通信に失敗しました" と表示する
#
# 期待する出力例：
# Chuck Norris can divide by zero.
#
# または
# APIエラー: ステータスコード 404
#
# または
# 通信に失敗しました

# ↓ ここから書く ↓
uri = URI('https://api.chucknorris.io/jokes/random')

response = Net::HTTP.get_response(uri)

case response
when Net::HTTPSuccess
  p JSON.parse(response.body)
else
  puts "APIエラー: ステータスコード #{response.code}"
end







