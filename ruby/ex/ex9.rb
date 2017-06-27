
def add #+
  puts "Enter number:"
    num1 = gets.chomp.to_i
  puts "Enter number:"
    num2 = gets.chomp.to_i
  puts "Total: #{num1 + num2}"
end

def subtract #-マイナス
  puts "Enter number:"
    num1 = gets.chomp.to_i
  puts "Enter number:"
    num2 = gets.chomp.to_i
  puts "Total: #{num1 - num2}"
end

def multiply #×
  puts "Enter number:"
    num1 = gets.chomp.to_i
  puts "Enter number:"
    num2 = gets.chomp.to_i
  puts "Total: #{num1 * num2}"
end

def divide　#÷割る
  puts "Enter number:"
    num1 = gets.chomp.to_f
  puts "Enter number:"
    num2 = gets.chomp.to_f
  puts "Total: #{num1 / num2}"
end
