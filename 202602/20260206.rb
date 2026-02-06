# 問題：Book クラスを作ろう（クラス/メソッド練習）

# 以下の要件を満たす Book クラスを作成してください。
# ※ ActiveRecord は使わず、純粋な Ruby のクラスとして実装してください。
class Book
  # 要件②
  attr_reader :title, :author, :price, :in_stock

  # --- 要件①：属性（情報） ---
  # Book は以下の情報を持つ
  # - title（タイトル）
  # - author（著者）
  # - price（価格 数値）
  # - in_stock（在庫ありかどうか true/false）
  def initialize(title:, author:, price:, in_stock:)
    @title = title
    @author = author
    @price = price
    @in_stock = in_stock
  end

  # --- 要件②：attr_reader ---
  # 以下を外から読めるようにする（getterを用意する）
  # - title, author, price, in_stock
  # ※ attr_reader を使うこと

  # --- 要件③：インスタンスメソッド ---
  # - in_stock? → 在庫があれば true、なければ false
  def in_stock?
    @in_stock
  end

  # - expensive? → price が 3000 以上なら true、未満なら false
  def expensive?
    @price >= 3000
  end

  # - summary → "タイトル - 著者（価格円）" の文字列を返す
  def summary
    "#{@title} - #{@author}（#{@price}）"
  end
  #   例: "Ruby入門 - 田中（3200円）"

  # --- 要件④：クラスメソッド ---
  # - self.available(books)
  #   引数の Book 配列から「在庫あり」だけを配列で返す
  def self.available(books)
    books.select{|s| s.in_stock?}
  end


  # - self.average_price(books)
  #   引数の Book 配列の price の平均を小数第2位までで返す
  #   ※ 整数除算に注意
  def self.average_price(books)
    average = books.map(&:price).sum.fdiv(books.length)
    average.round(2)
  end

  # - self.group_by_author(books)
  #   引数の Book 配列を author ごとにまとめた Hash を返す
  #   例:
  #   {
  #     "田中" => [book1, book3],
  #     "佐藤" => [book2]
  #   }
  def self.group_by_author(books)
    books.group_by(&:author)
  end
end


# --- 動作確認用（ここはそのまま使ってOK） ---
books = [
  Book.new(title: "Ruby入門", author: "田中", price: 3200, in_stock: true),
  Book.new(title: "Rails実践", author: "佐藤", price: 4500, in_stock: false),
  Book.new(title: "アルゴリズム基礎", author: "田中", price: 2800, in_stock: true)
]

p Book.available(books).map(&:title)
# => ["Ruby入門", "アルゴリズム基礎"]

p Book.average_price(books)
# => 3500.0

p Book.group_by_author(books).transform_values { |arr| arr.map(&:title) }
# => {"田中"=>["Ruby入門", "アルゴリズム基礎"], "佐藤"=>["Rails実践"]}

p books[0].summary
# => "Ruby入門 - 田中（3200円）"

p books[1].expensive?
# => true

p books[1].in_stock?
# => false