require 'CSV'

class Cake
attr_accessor :code, :item, :price

def initialize(hash)
  @code = hash[:code]
  @item = hash[:item]
  @price = hash[:price]
end

def self.from_csv_row(row)
  self.new({
    code: row['code'].to_i,
    item: row['item'].to_s,
    price: row['price'].to_i,
    })
end

HEADERS = ['code', 'item', 'price']

def to_csv_row
  CSV::Row.new(HEADERS, [code, item, price])
end
end
#end of the class Cake

def linedesign
  puts '= = = = ' * 13
end
def linedesign2
  puts "~ ~ ~ ~ " * 13
end
$linewidth = 110

$sizeprice = 0
$baseprice = 0
$flavorprice = 0
$layerprice = 0
$boxprice = 0
$extraprice = 0

def banner
  puts %q{

              &@.            *@(            @@
            @@@@(           &@@@#         @@@@
          @@@@@@(         &@@@@@@        @@@@@@*   #@@.    %@    .@&%%%%    #@        @%    .@,   .@(
          %@@@@@@         .@@@@@@,      &@@@@@@    #@/@    %@    .@*        #@        @%     ,@*  @%
           @@@@@@#         @@@@@         @@@@@/    #@ (&   %@    .@*        #@        @%      (@  @'
            @@@             @@@           @@@      #@  &(  %@    .@(,,,.    #@        @%       ,@%
            @@@             @@@           @@@      #@   @. %@    .@*        #@        @%        @,
            @@@             @@@           @@@      #@   .@>@.    .@*,,aa    #@@@@@@@  @%@@@@@   @,

      (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)    @@*#,@      .@&@      .@,  #@     .@*@@@@    @&  *@,
      (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)   @@     @,    &%,@.     .@, @@      .@*        @/    "
      (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)   @/           @  %&     .@%@@,      .@(@@@@     &@@.
      (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)   @/          %&   @     .@/ (@.     .@*            @@,
      (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)   @@     &.  *@@@@@@&    .@,  ,@.    .@*       ,&    @&
      (@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)    %@*,,@%   @@     @@   .@,   #@    .@(@@@@    @@* #@,

(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)
(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)
(@@@@@@@@@@@@@@@@@%//(%@@@@@@@@@@@@@@@@&(//#&@@@@@@@@@@@@@@)
    ,@@@@@@@@@,            /@@@@@@@@@             @@@@@@@@@)
       (@@@@#      (&@&/     .&@@@/     ,%@@%.     *@@%`
(@&            %@@@@@@@@@/          ,@@@@@@@@@@.         #@)
(@@@@&(.  ./&@@@@@@@@@@@@@@@%,. ,(@@@@@@@@@@@@@@@#,. .*@@@@)
(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)
(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)
(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@)
}
end
#
def oldrecord
  system 'cls'
  lineread=0
  linedesign
  puts "\nPlease enter the name of the last cake order:\n"
  linedesign
  print "   >> "
  $name = gets.chomp.capitalize
  puts "#{$name}'s order is as follows:"
  $opened_file = File.open($name+ '_record.txt').read
  $opened_file.gsub!(/\r\n?/, "\n")
  $opened_file.each_line do |line|
    lineread += 1
    puts "#{line}"
  end
end
#
def newrecord
  linedesign
  puts "\n | Before we begin, may I ask what your name is so we can create a new record for you? | ".center($linewidth,'- - ')
  puts "\n"
  linedesign
  puts "\n"
  print "   >> "
  $name = gets.chomp
  $opened_file = File.new($name + '_record.txt', 'a+')
  $opened_file.write("\n")
  $opened_file.write($name.capitalize)
  puts "Alrighty #{$name}, let's begin!"
  puts "\n"
  puts "\n"
end
#
def showShape
  system 'cls'
  $cakeShape = [{code: 1, shape: "Rectangle"},
                {code: 2, shape: "Round"},
                {code: 3, shape: "Custom"}
                ]
  puts "\n"
  linedesign
  puts "\n"
  puts "  |  What shape do you want your cake to come in?  |  ".center($linewidth, '* . * . ')
  puts "\n"
  linedesign
    for x in 1..$cakeShape .length
      puts "#{x}. #{$cakeShape [x-1][:shape]}"
    end
    puts "\n"
    print "   >> "
    shapechoice = gets.chomp
case shapechoice
    when '1'
      printshape = "Rectangle"
      puts "You chose a rectangular cake!"
    when '2'
      printshape = "Round"
      puts "You chose a round cake!"
    when '3'
      printshape = "Custom shape, confirm with the customer."
      puts "You chose a customized cake!"
    else
      puts "Oops, wrong code!"
end
    $opened_file.write("\n")
    $opened_file.write(printshape)
    moveon = gets.chomp
end
#
def showBase
  puts "\n"
  puts "  |  What kind of cake base do you want your cake to have?  |  ".center($linewidth, '* . * . ')
  puts "\n"
  linedesign
  CSV.foreach('cakebase.csv', headers: true) do |row|
    letThemEatCake = Cake.from_csv_row(row)
    puts "#{letThemEatCake.code}. #{letThemEatCake.item} - #{letThemEatCake.price}"
  end
  puts "\n"
  print "   >> "
  basechoice = gets.chomp
case basechoice
  when '0'
    $baseprice = 0
  when '1'
    printbase = "Sponge Cake"
    $baseprice = 800
    puts "You chose a sponge cake as your base!"
    moveon = gets.chomp
    showFlavor
    showFrosting
    showLayers
  when '2'
    printbase = "Chiffon"
    $baseprice = 1200
    puts "You chose a chiffon cake as your base!"
    moveon = gets.chomp
    showFlavor
    showFrosting
    showLayers
  when '3'
    printbase = "Cheesecake"
    $baseprice = 1500
    puts "You chose a cheesecake as your base!"
    moveon = gets.chomp
    showFlavor
  when '4'
    printbase = "Carrot Cake"
    $baseprice = 800
    puts "You chose a carrot cake as your base!"
    moveon = gets.chomp
    showFrosting
    showLayers
  when '5'
    printbase = "Mousse Cake"
    $baseprice = 900
    puts "You chose a mousse cake as your base!"
    moveon = gets.chomp
    showFlavor
  when '6'
    printbase = "Red Velvet Cake"
    $baseprice = 1200
    puts "You chose a red velvet cake as your base!"
    moveon = gets.chomp
    showFrosting
    showLayers
  when '7'
    printbase = "Strawberry Shortcake"
    $baseprice = 1100
    puts "You chose a strawberry shortcake as your base!"
    moveon = gets.chomp
    showFrosting
    showLayers
  else
    puts "Oops, wrong code!"
  end
    $opened_file.write("\n")
    $opened_file.write(printbase)
    moveon = gets.chomp
end
#
def showSize
  puts "\n"
  puts "  |  What size do you want your cake to be?  |  ".center($linewidth, '* . * . ')
  puts "\n"
  linedesign
  CSV.foreach('cakesize.csv', headers: true) do |row|
    letThemEatCake = Cake.from_csv_row(row)
    puts "#{letThemEatCake.code}. #{letThemEatCake.item} - #{letThemEatCake.price}"
  end
  puts "\n"
  print "   >> "
  sizechoice = gets.chomp
case sizechoice
  when '0'
    $sizeprice = 0
  when '1'
    printsize = "9 inches"
    $sizeprice = 0
    puts "You chose a 9-inch cake!"
  when '2'
    printsize = "12 inches"
    $sizeprice = 400
    puts "You chose a 12-inch cake!"
  when '3'
    printsize = "15 inches"
    $sizeprice = 800
    puts "You chose a 15-inch cake!"
  when '4'
    printsize = "Custom size, confirm with the customer."
    $sizeprice = 1000
  else
    puts "Oops, wrong code!"
end
  $opened_file.write("\n")
  $opened_file.write(printsize)
  moveon = gets.chomp
end
#
def showFlavor #only for sponge cake, chiffon cake, mousse cake and cgeesecake
  puts "\n"
  linedesign
  puts "\n"
  puts "  |  What kind of flavor do you want your base to be?  |  ".center($linewidth, '* . * . ')
  puts "\n"
  linedesign
  CSV.foreach('cakeflavor.csv', headers: true) do |row|
    letThemEatCake = Cake.from_csv_row(row)
    puts "#{letThemEatCake.code}. #{letThemEatCake.item} - #{letThemEatCake.price}"
  end
  puts "\n"
  print "   >> "
  flavorchoice = gets.chomp
case flavorchoice
  when '0'
    $flavorprice = 0
  when '1'
    printflavor = "Vanilla"
    $flavorprice = 100
    puts "You chose to add vanilla flavoring to your cake!"
  when '2'
    printflavor = "Chocolate"
    $flavorprice = 100
    puts "You chose to add chocolate flavoring to your cake!"
  when '3'
    printflavor = "Strawberry"
    $flavorprice = 200
    puts "You chose to add strawberry flavoring to your cake!"
  when '4'
    printflavor = "Coffee"
    $flavorprice = 200
    puts "You chose to add coffee flavoring to your cake!"
  when '5'
    printflavor = "Orange/Lemon"
    $flavorprice = 200
    puts "You chose to add citrus flavoring to your cake!"
  else
    puts "Oops, wrong code!"
end
    $opened_file.write("\n")
    $opened_file.write(printflavor)
    moveon = gets.chomp
end
#
def showFrosting # only for sponge cake, chiffon, carrot, red velvet, Strawberry
  puts "\n"
  linedesign
  puts "\n"
  puts "  |  What kind of frosting do you want your cake to have?  |  ".center($linewidth, '* . * . ')
  puts "\n"
  linedesign
  CSV.foreach('cakefrosting.csv', headers: true) do |row|
    letThemEatCake = Cake.from_csv_row(row)
    puts "#{letThemEatCake.code}. #{letThemEatCake.item} - #{letThemEatCake.price}"
  end
  puts "\n"
  print "   >> "
  frostingchoice = gets.chomp
case frostingchoice
  when '0'
    $frostingprice = 0
  when '1'
    printfrosting = "Buttercream Frosting"
    $frostingprice = 200
    puts "You chose to use buttercream frosting on your cake!"
  when '2'
    printfrosting = "Cream Cheese Frosting"
    $frostingprice = 300
    puts "You chose to use cream cheese frosting on your cake!"
  when '3'
    printfrosting = "Meringue Buttercream"
    $frostingprice = 200
    puts "You chose to use meringue buttercream frosting on your cake!"
  when '4'
    printfrosting = "Ganache"
    $frostingprice = 300
    puts "You chose to use ganache on your cake!"
  when '5'
    printfrosting = "Whipped Cream Frosting"
    $frostingprice = 100
    puts "You chose to use whipped cream frosting on your cake!"
  else
    puts "Oops, wrong code!"
end
    $opened_file.write("\n")
    $opened_file.write(printfrosting)
    moveon = gets.chomp
end
#
def showLayers #only for sponge cake, chiffon cake, carrot, red, Strawberry
  puts "\n"
  linedesign
  puts "\n"
  puts "  |  How many layers do you want your cake to have?  |  ".center($linewidth, '* . * . ')
  puts "\n"
  linedesign
  CSV.foreach('cakelayers.csv', headers: true) do |row|
    letThemEatCake = Cake.from_csv_row(row)
    puts "#{letThemEatCake.code}. #{letThemEatCake.item} - #{letThemEatCake.price}"
  end
  puts "\n"
  print "   >> "
  layerchoice = gets.chomp
case layerchoice
  when '0'
    $layerprice = 0
  when '1'
    printlayer = "1 layer"
    $layerprice = 0
    puts "Your cake has 1 layer!"
  when '2'
    printlayer = "2 layers"
    $layerprice = 300
    puts "Your cake has 2 layers!"
  when '3'
    printlayer = "3 layers"
    $layerprice = 500
    puts "Your cake has 3 layers!"
  else
    puts "Oops, wrong code!"
end
  $opened_file.write("\n")
  $opened_file.write(printlayer)
  moveon = gets.chomp
end
#
def showBox
  puts "\n"
  puts "  |  What kind of box do you want your cake to be placed in?  |  ".center($linewidth, '* . * . ')
  puts "\n"
  linedesign
  CSV.foreach('cakebox.csv', headers: true) do |row|
    letThemEatCake = Cake.from_csv_row(row)
    puts "#{letThemEatCake.code}. #{letThemEatCake.item} - #{letThemEatCake.price}"
  end
  puts "\n"
  print "   >> "
  boxchoice = gets.chomp
case boxchoice
  when '0'
    $boxprice = 0
  when '1'
    printbox = "Basic Box"
    $boxprice = 0
    puts "You chose to put your cake in a basic box!"
  when '2'
    printbox = "Fancy Box"
    $boxprice = 150
    puts "You chose to put your cake in a fancy box!"
  when '3'
    printbox = "Super Fancy Box"
    $boxprice = 280
    puts "You chose to put your cake in a super fancy box!"
  else
    puts "Oops, wrong code!"
end
  $opened_file.write("\n")
  $opened_file.write(printbox)
  moveon = gets.chomp
end
#
def showExtras
  puts "\n"
  puts "  |  Do wou want to add anything to the package?  |  ".center($linewidth, '* . * . ')
  puts "\n"
  linedesign
  CSV.foreach('cakeextras.csv', headers: true) do |row|
    letThemEatCake = Cake.from_csv_row(row)
    puts "#{letThemEatCake.code}. #{letThemEatCake.item} - #{letThemEatCake.price}"
  end
  puts "\n"
  print "   >> "
  extrachoice = gets.chomp.downcase
case extrachoice
    when '0'
      $extraprice = 0
    when '1'
      printextra = "One bottle of champagne"
      $extraprice += 1400
      puts "You chose to add one bottle of champagne!"
    when '2'
      printextra = "One bag of our house blend tea"
      $extraprice += 800
      puts "You chose to add one bag of our house blend tea!"
    when '3'
      printextra = "One bouquet of 12 red roses"
      $extraprice += 1200
      puts "You chose to add one bouquet of 12 red roses"
    when '4'
      printextra = "Special Delivery with Harana"
      $extraprice += 400
      puts "You chose to use the special delivery with harana option"
    else
      puts "Oops, wrong code!"
  end
$opened_file.write("\n")
$opened_file.write(printextra)
moveon = gets.chomp
end
#
def realprogram
banner
moveon = gets.chomp
system 'cls'
puts "\n"
linedesign2
puts "\n"
puts "  |  WELCOME TO NELLY CAKES  |  ".center($linewidth, ' * . * .')
puts "\n"
linedesign2
puts "\n"
puts "Are you here to make a new order or to check an old order?\n\n1. Make a new order\n\n2. Track an old order"
puts "\n"
print "   >>  "
orderchoice = gets.chomp
case orderchoice
when '1'
  system 'cls'
    newrecord
      linedesign
    showShape
      puts "\n"
      linedesign
    showBase
      puts "\n"
      linedesign
    showSize
      puts "\n"
      linedesign
    showBox
      puts "\n"
      linedesign
    showExtras
$finalprice = $sizeprice + $baseprice + $flavorprice + $layerprice + $boxprice + $extraprice
        if $finalprice == 0
          system 'cls'
          puts "\n"
          linedesign2
          puts "\n"
          puts "Ooooh, you get a free surprise cake! Hehehe."
          puts "\n"
          linedesign2
          puts "\n"
        else
          puts "\n"
          linedesign
          puts "\n"
          puts "Alrighty, your total is: #{$finalprice}.".center($linewidth)
          puts "\n"
          linedesign
          $opened_file.write("\n")
            $opened_file.write("The total is #{$finalprice}.")
          puts "\nPlease pay to the cashier."
          puts "\n"
          puts "Thanks for ordering! We'll see you again soon! :-)"
          puts "\n"
          $opened_file.close
        end
when '2'
    oldrecord
end
end

realprogram
