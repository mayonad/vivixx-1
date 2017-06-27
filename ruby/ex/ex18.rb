class Date
    def initialize(month = 7)
        @month = month
    end

  attr_accessor :month # アクセスメソッド
end

date = Date.new()
date.month = 12
puts "今は #{date.month} 月です"
