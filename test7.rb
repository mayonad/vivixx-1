system "cls"

def banner
  puts '_'*40
  puts ""
  puts "Welcome to Dan's car shop!"
  puts '_'*55
end

banner
make = [
    {num: "1" ,make: "Toyota", price: 580000 },
    {num: "2" ,make: "Honda", price: 500000 },
    {num: "3" ,make: "Nissan", price: 520000 },
    ]

colors = [
    {num: "1" ,color: "red", price: 1000},
    {num: "2" ,color: "whilte", price:  1000},
    {num: "3" ,color: "black", price: 1000},
        ]

accessories = [
    {num: "1" ,color: "door mirror cover", price: 5000},
    {num: "2" ,color: "rear spoiler", price:  12000},
    {num: "3" ,color: "front grille garnish", price: 5200},
                ]

loop do
  puts "\nwhich car would you like?\n"
  puts %q{
1 : Toyota -> P58000
2 : Honda -> P50000
3 : Nissan -> P520000
  }

$a = gets.chomp
if $a == "1"
    puts "Your choice is #{$a}\nsubtotal: P#{make[0][:price]}"
   break
elsif $a == "2"
  puts "Your choice is #{$a}\nsubtotal: P#{make[1][:price]}"
  break
elsif $a == "3"
  puts "Your choice is #{$a}\nsubtotal: P#{make[2][:price]}"
  break
else
  puts "wrong! please enter again!"
end
end

loop do
  puts "\nwhat color would you like\n"
  puts %q{
1 : silver
2 : white
3 : black
  }
$aa = gets.chomp
if $aa == "1"
    puts "Your choice is #{$aa}\nsubtotal: P#{colors[0][:price]}"
   break
elsif $aa == "2"
  puts "Your choice is #{$aa}\nsubtotal: P#{colors[1][:price]}"
  break
elsif $aa == "3"
  puts "Your choice is #{$aa}\nsubtotal: P#{colors[2][:price]}"
  break
else
  puts "wrong! please enter again!"
end
end

loop do
    puts "\nwhat accessories would you like\n"
    puts %q{
1 : door mirror cover -> P5000
2 : rear spoiler -> P12000
3 : front grille garnish -> P5200
    }
$aaa = gets.chomp
    if $aaa == "1"
        puts "Your choice is #{$aaa}\nsubtotal: + P#{accessories[0][:price]}"
       break
    elsif $aaa == "2"
      puts "Your choice is #{$aaa}\nsubtotal: P#{accessories[1][:price]}"
      break
    elsif $aaa == "3"
      puts "Your choice is #{$aaa}\nsubtotal: P#{accessories[2][:price]}"
      break
    else
      puts "wrong! please enter again!"
end
end

def test_sum
  @first = gets.chomp.to_f
  @second = gets.chomp.to_f
  @summ = @first + @second
  customer = Customer.new(@first, @second, @summ)
  assert_equal(@first + @second, customer.sum)
end
end

make_subtotal = make[0][:price]
make_subtotal = make[1][:price]
make_subtotal = make[1][:price]

puts "Your total is "
