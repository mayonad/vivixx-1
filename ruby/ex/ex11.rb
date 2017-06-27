system 'cls'
@patak = 35

def fair(a)
  return @patak += ((a * 1000) / 400) * 2
end

puts "Enter distance in km:"
a = gets.chomp.to_f
puts "Total fair: #{fair(a)}"
