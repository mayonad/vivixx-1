puts "Enter distance in m:"
distance = gets.strip.to_f


if distance <= 500
    fair = 35
    puts "Fair: P#{fair}"

elsif distance > 500
    fair = 35 + (distance - 500) / 100 * 2
    puts "Fair: P#{fair}"

end
