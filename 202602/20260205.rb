# 問題
# 以下の要件を満たす Restaurant クラスを作成してください。
# ※ この問題では ActiveRecord は使わず、純粋な Ruby クラスとして考えてください。
class Restaurant
  attr_reader :name, :area, :rating, :is_chain

# 要件①
# Restaurant は以下の情報を持つ
# - name（店舗名）
# - area（エリア）
# - rating（評価点 数値）
# - is_chain（チェーン店かどうか true / false）
  def initialize(name:, area:, rating:, is_chain:)
    @name = name
    @area = area
    @rating = rating
    @is_chain = is_chain
  end

  def chain?
    @is_chain
  end

  def highly_rated?
    @rating >= 4.0
  end
# 要件②
# インスタンスメソッドとして以下を実装する
# - chain? → チェーン店なら true、そうでなければ false を返す
# - highly_rated? → rating が 4.0 以上なら true、未満なら false


# 要件③
# クラスメソッドとして以下を実装する
  def self.non_chain(restaurants)
    # 引数で受け取った Restaurant の配列から
    # チェーン店でないものだけを配列で返す
    restaurants.select { |restaurant| !restaurant.chain? }
  end

  def self.average_rating(restaurants)
    # 引数で受け取った Restaurant の配列の
    # rating の平均値を小数第2位までで返す
    average = restaurants.map(&:rating).sum.fdiv(restaurants.length)

    average.round(2)
  end

end


# --- 以下は動作確認用 ---
restaurants = [
  Restaurant.new(name: "幸福飯店", area: "梅田", rating: 4.2, is_chain: false),
  Restaurant.new(name: "王将", area: "難波", rating: 3.8, is_chain: true),
  Restaurant.new(name: "来来軒", area: "天満", rating: 4.5, is_chain: false)
]

p Restaurant.non_chain(restaurants).map(&:name)
# => ["幸福飯店", "来来軒"]

p Restaurant.average_rating(restaurants)
# => 4.17

