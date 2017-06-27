#munchiezcsv
require 'CSV'

class Menu
attr_accessor :code, :item, :price

def initialize(hash)
  @code = hash[:code]
  @item = hash[:item]
  @price = hash[:price]
end

def self.from_csv_row(row)
  self.new({
    code: row['code'].to_i,
    item: row['item'],
    price: row['price'].to_i
    })
end
end

HEADERS = ['code', 'item', 'price']

def to_csv_row
  CSV::Row.new(HEADERS, [code, item, price])
end

system 'cls'
def banner1
  puts %q{

     _______________________________________

                            WELCOME TO FOOD HUB!
     ____________________________________________________________


                                                    zzz,
                                                ,z####""
                                     ,ee888eez####""    ,,
                                  ,e8""'  z#####,   ,,z###z,
                               ,e8",eeez###"    8#####z""
                               ,e  z8   "8ee, ######z"
                             ,,z####"8ee,  '"8e#"   <8
                           z#####8   z##"8e,  ""8e   8e
                        z####"  8 z###,8,  "8,   "   '8e
                     z###"  ,z####:8",8 8"e "8        '8e,
                  z###" ,z####"" "8,8" ,8 "8,8;         "8888eee,
                z###""                      "888e,      88   88
                ""                              "88ee, ,88'  ,8"
                                            ""888e  ,8"
                                                ""88"



                                           _______________________________________


                                           ____________________________________________________________



      }
  end


#
#
def banner2
  puts ""
end
#
#

banner1


class String
  def capitalize_each
    self.split(" ").each{|word| word.capitalize!}.join(" ")
  end
  def capitalize_each!
    replace capitalize_each
  end
end
#
#
def create_account
  puts "Please enter the following: "
  print "Full Name: "
  $name = gets.chomp.capitalize_each
  print "Contact number: "
  contact_number = gets.chomp.to_i
  print "Email: "
  email = gets.chomp.downcase
  print "Load: "
  money = gets.chomp.to_f
  puts "WELCOME, #{$name}! Now you can buy using your FoodHub card! Thank you!"
  $mon = money
end
#
#
def showTrucks
  $foodtruckList = [  {code: 1, foodtruck: "Munchiez"},
                      {code: 2, foodtruck: "Pendong Food Bug"},
                      {code: 3, foodtruck: "Yamashita"},
                      {code: 4, foodtruck: "Road Grille"},
                      {code: 5, foodtruck: "Livelong"},
                      {code: 6, foodtruck: "Cheat Day"},
                      {code: 7, foodtruck: "Binge Beetle"},
                      {code: 8, foodtruck: "Exit - we're good to go!"}
                  ]

  puts %q{
______________________________________________

            WELCOME TO FOOD HUB!
        Please choose your Food Truck:
__________________________________________________________________


                1.Munchiez
  　　　                             　2.Pendong Food Bug

3.Yamashita
                           4.Road Grille


                 5.Livelong

                                    6.Cheat Day
7.Binge Beetle

            8.Exit - we're good to go!

____________________________________________________________________
  }

#  for x in 1..$foodtruckList.length
#    puts "#{x}. #{$foodtruckList[x-1][:foodtruck]}"
#  end
end
#
def showMunchiezMenu
  CSV.foreach('munchiezmenu.csv', headers: true) do |row|
    showmethefood = Menu.from_csv_row(row)
    puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
  end
end
#
def showPendongMenu
  CSV.foreach('pendongmenu.csv', headers: true) do |row|
    showmethefood = Menu.from_csv_row(row)
    puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
  end
end
#
def showYamashitaMenu
  CSV.foreach('yamashitamenu.csv', headers: true) do |row|
    showmethefood = Menu.from_csv_row(row)
    puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
  end
end
#
#
def showRoadGrilleMenu
  CSV.foreach('roadgrillemenu.csv', headers: true) do |row|
    showmethefood = Menu.from_csv_row(row)
    puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
  end
end
#
#
def showLiveLongMenu
  CSV.foreach('livelongmenu.csv', headers: true) do |row|
    showmethefood = Menu.from_csv_row(row)
    puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
  end
end
#
#
def showCheatDayMenu
  CSV.foreach('cheatdaymenu.csv', headers: true) do |row|
    showmethefood = Menu.from_csv_row(row)
    puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
  end
end
#
#
def showBingeBeetleMenu
  CSV.foreach('bingebeetlemenu.csv', headers: true) do |row|
    showmethefood = Menu.from_csv_row(row)
    puts "#{showmethefood.code}. #{showmethefood.item} - #{showmethefood.price}"
  end
end
#
#
def linedesign
  puts '==== ' * 8
end
#
#
def have_account
  puts "Do you already have a FoodHub Account? [y/n]"
  have = gets.chomp.downcase
end
#
#subtotals for each food truck
$munchiezsubtotal = 0
$pendongsubtotal = 0
$yamashitasubtotal = 0
$roadgrillesubtotal = 0
$livelongsubtotal = 0
$cheatdaysubtotal = 0
$bingebeetlesubtotal = 0
#qtytotals for each food truck
$munchiezqtytotal = 0
$pendongqtytotal = 0
$yamashitaqtytotal = 0
$roadgrilleqtytotal = 0
$livelongqtytotal = 0
$cheatdayqtytotal = 0
$bingebeetleqtytotal = 0
#
#
def actualprogram

$wantmore = "y"

while $wantmore == 'y' do

system "cls"
puts ""
puts "Which food truck do you want to check out?"
showTrucks
foodtruckchoice = gets.chomp.to_i

#start of munchiez
if foodtruckchoice == 1
mwantmore = "y"
    while mwantmore == 'y'
      system  'cls'
      puts ""
      puts "_____________________"
      puts ""
      puts "WELCOME TO MUNCHIEZ"
      puts "___________________________________________"
      puts ""
    showMunchiezMenu

    $munchiezorder = gets.chomp.to_i

    CSV.foreach('munchiezmenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $munchiezorder == showmethefood.code
        puts "Okay, you chose #{showmethefood.item}. That's #{showmethefood.price} each."
        puts "How many of that do you want?"
    end
    end

    $munchiezqty= gets.chomp

    CSV.foreach('munchiezmenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $munchiezorder == showmethefood.code
           $munchiezsubtotal += showmethefood.price * $munchiezqty.to_i
           $munchiezqtytotal += $munchiezqty.to_i
           puts "So that's a subtotal of #{$munchiezsubtotal} from Munchiez."
        end
        end

    print "\nDo you want anything else from Munchiez? y/n\n"
    mwantmore = gets.chomp
    mwantmore.downcase

    end
end
#end of munchiez
#start of pendong
if foodtruckchoice == 2
pwantmore = "y"
    while pwantmore == 'y'
      system  'cls'
      puts ""
      puts "_____________________"
      puts ""
      puts "WELCOME TO PENDONG FOOD BUG"
      puts "___________________________________________"
      puts ""
    showPendongMenu

    $pendongorder = gets.chomp.to_i

    CSV.foreach('pendongmenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $pendongorder == showmethefood.code
        puts "Okay, you chose #{showmethefood.item}. That's #{showmethefood.price} each."
        puts "How many of that do you want?"
    end
    end

    $pendongqty= gets.chomp

    CSV.foreach('pendongmenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $pendongorder == showmethefood.code
           $pendongsubtotal += showmethefood.price * $pendongqty.to_i
           $pendongqtytotal += $pendongqty.to_i
           puts "So that's a subtotal of #{$pendongsubtotal} from Pendong Food Bug."
        end
        end

    print "\nDo you want anything else from Pendong Food Bug? y/n\n"
    pwantmore = gets.chomp
    pwantmore.downcase

    end
end
#end of pendong
#start of yamashita
if foodtruckchoice == 3
ywantmore = "y"
    while ywantmore == 'y'

      system  'cls'
      puts ""
      puts "_____________________"
      puts ""
      puts "WELCOME TO YAMASHITA"
      puts "___________________________________________"
      puts ""
    showYamashitaMenu

    $yamashitaorder = gets.chomp.to_i

    CSV.foreach('yamashitamenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $yamashitaorder == showmethefood.code
        puts "Okay, you chose #{showmethefood.item}. That's #{showmethefood.price} each."
        puts "How many of that do you want?"
    end
    end

    $yamashitaqty= gets.chomp

    CSV.foreach('yamashitamenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $yamashitaorder == showmethefood.code
           $yamashitasubtotal += showmethefood.price * $yamashitaqty.to_i
           $yamashitaqtytotal += $yamashitaqty.to_i
           puts "So that's a subtotal of #{$yamashitasubtotal} from Yamashita."
        end
        end

    print "\nDo you want anything else from Yamashita? y/n\n"
    ywantmore = gets.chomp
    ywantmore.downcase

    end
end
#end of yamashita
#start of roadgrille
if foodtruckchoice == 4
rgwantmore = "y"
    while rgwantmore == 'y'
      system  'cls'
      puts ""
      puts "_____________________"
      puts ""
      puts "WELCOME TO ROAD GRILLE"
      puts "___________________________________________"
      puts ""
    showRoadGrilleMenu

    $roadgrilleorder = gets.chomp.to_i

    CSV.foreach('roadgrillemenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $roadgrilleorder == showmethefood.code
        puts "Okay, you chose #{showmethefood.item}. That's #{showmethefood.price} each."
        puts "How many of that do you want?"
    end
    end

    $roadgrilleqty= gets.chomp

    CSV.foreach('roadgrillemenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $roadgrilleorder == showmethefood.code
           $roadgrillesubtotal += showmethefood.price * $roadgrilleqty.to_i
           $roadgrilleqtytotal += $roadgrilleqty.to_i
           puts "So that's a subtotal of #{$roadgrillesubtotal} from Road Grille."
        end
        end

    print "\nDo you want anything else from Road Grille? y/n\n"
    rgwantmore = gets.chomp
    rgwantmore.downcase

    end
end
#end of roadgrille
#start of livelong
if foodtruckchoice == 5
llwantmore = "y"
    while llwantmore == 'y'

      system  'cls'
      puts ""
      puts "_____________________"
      puts ""
      puts "WELCOME TO LIVELONG"
      puts "___________________________________________"
      puts ""
    showLiveLongMenu

    $livelongorder = gets.chomp.to_i

    CSV.foreach('livelongmenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $livelongorder == showmethefood.code
        puts "Okay, you chose #{showmethefood.item}. That's #{showmethefood.price} each."
        puts "How many of that do you want?"
    end
    end

    $livelongqty= gets.chomp

    CSV.foreach('livelongmenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $livelongorder == showmethefood.code
           $livelongsubtotal += showmethefood.price * $livelongqty.to_i
           $livelongqtytotal += $livelongqty.to_i
           puts "So that's a subtotal of #{$livelongsubtotal} from Live Long."
        end
        end

    print "\nDo you want anything else from Live Long? y/n\n"
    llwantmore = gets.chomp
    llwantmore.downcase

    end
end
#end of livelong
#start of cheat day
if foodtruckchoice == 6
cdwantmore = "y"
    while cdwantmore == 'y'

      system  'cls'
      puts ""
      puts "_____________________"
      puts ""
      puts "WELCOME TO CHEAT DAY"
      puts "___________________________________________"
      puts ""
    showCheatDayMenu

    $cheatdayorder = gets.chomp.to_i

    CSV.foreach('cheatdaymenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $cheatdayorder == showmethefood.code
        puts "Okay, you chose #{showmethefood.item}. That's #{showmethefood.price} each."
        puts "How many of that do you want?"
    end
    end

    $cheatdayqty= gets.chomp

    CSV.foreach('cheatdaymenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $cheatdayorder == showmethefood.code
           $cheatdaysubtotal += showmethefood.price * $cheatdayqty.to_i
           $cheatdayqtytotal += $cheatdayqty.to_i
           puts "So that's a subtotal of #{$cheatdaysubtotal} from Cheat Day."
        end
        end

    print "\nDo you want anything else from Cheat Day? y/n\n"
    cdwantmore = gets.chomp
    cdwantmore.downcase

    end
end
#end of cheat day
#start of binge beetle
if foodtruckchoice == 7

bbwantmore = "y"
    while bbwantmore == 'y'
      system  'cls'
      puts ""
      puts "_____________________"
      puts ""
      puts "WELCOME TO BINGE BEETLE"
      puts "_____________________________________"
      puts ""
    showBingeBeetleMenu

    $bingebeetleorder = gets.chomp.to_i

    CSV.foreach('bingebeetlemenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $bingebeetleorder == showmethefood.code
        puts "Okay, you chose #{showmethefood.item}. That's #{showmethefood.price} each."
        puts "How many of that do you want?"
    end
    end

    $bingebeetleqty= gets.chomp

    CSV.foreach('bingebeetlemenu.csv', headers: true) do |row|
      showmethefood = Menu.from_csv_row(row)
        if $bingebeetleorder == showmethefood.code
           $bingebeetlesubtotal += showmethefood.price * $bingebeetleqty.to_i
           $bingebeetleqtytotal += $bingebeetleqty.to_i
           puts "So that's a subtotal of #{$bingebeetlesubtotal} from Binge Beetle."
        end
        end

    print "\nDo you want anything else from Binge Beetle? y/n\n"
    bbwantmore = gets.chomp
    bbwantmore.downcase

    end
end
#end of binge beetle
#exit the menus
if foodtruckchoice == 8

$totaltotal = $munchiezsubtotal + $pendongsubtotal + $yamashitasubtotal + $roadgrillesubtotal + $livelongsubtotal + $munchiezsubtotal + $bingebeetlesubtotal
$qtytotal = $munchiezqtytotal + $pendongqtytotal + $yamashitaqtytotal + $roadgrilleqtytotal + $livelongqtytotal + $munchiezqtytotal + $bingebeetleqtytotal
$endmoney = $mon - $totaltotal
    puts "Okay, #{$name}, did you have fun choosing your food? You have a #{$qtytotal} items in your tray, and you grand total is #{$totaltotal}.\nThis amount will be taken from your account. \nYou now have #{$endmoney} in your account. Enjoy your meal!"
    $wantmore = 'n'
    exit
end
#end ng choice 8
end
#end ng while
end
# end ng def (actual program)

if have_account == 'n'
  system "cls"
  create_account
  actualprogram
else
  actualprogram
end
