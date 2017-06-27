require 'csv'

CSV.foreach('customers.csv', headers: true) do |row|
  #行に対する処理
  puts "person #{ row['first_name']}"
end
