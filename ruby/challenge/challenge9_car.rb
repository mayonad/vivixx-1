
#nicole


def banner
  puts %q{                                                        ___________
                                              __..--""""           """"--..__
                                          _.-"""""""""""-----...      ______ `.
                                       .-"                      l ,-""    \ "-.`.
                                    .-"                         ; ;        ;   \ ""--.._
                                  .'                           : :         |    ;      .l
                            _.._.'                             ; ;  ___    |    ;    .' :
                           (  .'                              : :  :   ".  :..-'   .'    ;
                            )'                                | ;  ; __.'-"(     .'  .--.:
                    ___...-'""""----....____          ______.-' :-/.'       \_.-'  .' .-.\l
            __..--""                        """"""""""          /\"          ;    / .gs./\;
        _.-"                                                   /  ;          |   . d$P"Tb
     .-""-,                       ____                        /   |          :   ;:$$   $;
   .'     ;                    ,""    ""--..__               /    :          |   $$$;   :$
  /"-._  /                     ;       ____..-'    .-"""-.  /     :          ;  _$$$;   :$
 :     ""--.._          ___....+---""""          .'  _._  \/      |         _:-" $$$;   :$
 ;                                              /  .d$$$b./       ;      .-".'   :$$$   $P
:            .----...____                      :  dP' `T$P        |   .-" .' _.gd$$$$b_d$'
;    __...---|    bug    |----....____         | :$     $b        : .'   (.-"  `T$$$$$$P'
;  .';       '----...____;       /    "-.      ; $;     :$;_____..-"  .-"
: /  :                          /        \__..-':$       $$ ;-.    .-"
 Y    ;                        /          ;     $;       :$;|  `.-"
 :    :                       /           |     $$       $$;:.-"
 '$$$ggggp...____            /            :     :$;     :$$
  $$$$$$$$$$$$   """"----...:________....gggg$$$$$$     $$;
  'T$$$$$$$$P'                           T$$$$$$$$$b._.d$P
    `T$$$$P'                              T$$$$$$$$$$$$$P
                                           `T$$$$$$$$$P'}
end


class Car
  attr_accessor :make, :age_car, :top_speed, :gas_tank_size
  def initialize(make, age_car, top_speed, gas_tank_size)
    @make = make.to_s
    @age_car = age_car.to_i
    @top_speed = top_speed.to_s
    @gas_tank_size = gas_tank_size.to_f
  end
  def car_details
    puts "      Car details: "
    puts "    Make: #{@make}"
    puts "    Age: #{@age_car} years"
    puts "    Top speed: #{@top_speed}"
    puts "    Gas tank size: #{@gas_tank_size} liters"
  end
end

class Driver < Car
  attr_accessor :name, :car, :age_driver, :contact
  def initialize(name, car, age_driver, contact)
    @name = name.to_s
    @car = car.to_s
    @age_driver = age_driver.to_i
    @contact = contact.to_s
  end
  def driver_details
    puts "Driver details: "
    puts "    Name: #{@name}"
    puts "    Car: #{@car}"
    puts "    Age: #{@age_driver}"
    puts "    Contact number: #{@contact}"
    puts 'x' * 30
  end
end

def first
  $lam = Car.new('Lamborghini', 4, '350 km/h (217 mph)', 90)
  juan = Driver.new('Juan Manuel Fangio', "Lamborghini", 84, '800-633-3711')
  puts "Driver #1"
  puts juan.driver_details
end

def second
  $henn = Car.new('Hennessey Venom GT', 5, '435.31 km/h (270 mph)', 70.1)
  michael = Driver.new('Michael Schumacher', "Hennessey Venom GT", 48, '800-433-7300')
  puts "Driver #2"
  puts michael.driver_details
end

def third
  $sal = Car.new('Saleen S7 Twin Turbo', 4, '399 km/h(248 mph)', 72)
  mario = Driver.new('Mario Andretti', "Saleen S7 Twin Turbo", 77, '800-237-0027')
  puts "Driver #3"
  puts mario.driver_details
end

def fourth
  $ssc = Car.new('SSC Ultimate Aero', 3, '439 km/h(273 mph)', 80)
  shirley = Driver.new('Shirley Muldowney', "SSC Ultimate Aero", 76, '800-237-0028')
  puts "Driver #4"
  puts shirley.driver_details
end

def fifth
  $bug = Car.new('Bugatti Chiron', 4, '420 km/h (261 mph)', 67)
  alain = Driver.new('Alain Marie Pascal Prost', "Bugatti Chiron", 62, '800-240-0028')
  puts "Driver #5"
  puts alain.driver_details
end

def continue
  puts "Would you like to know more about others' cars? [y/n]"
  $con = gets.chomp.downcase
end

def choose
  $user='';
  puts "Just type the first name of the driver: "
  $user = gets.chomp.downcase
end

def notanymore
  puts "Would you still like to know more about others' cars? [y/n]"
  sss = gets.chomp.downcase
  if sss=='y'
    system 'cls'
    banner
    first
    second
    third
    fourth
    fifth
    choose
  else
    puts "Thank you! Have a nice day!"
  end
end

banner
first
second
third
fourth
fifth
continue

while $con != 'n'
  choose
  case $user
  when 'juan'
    puts $lam.car_details
    puts "Would you still like to know more about others' cars? [y/n]"
    sss = gets.chomp.downcase
    if sss=='y'
      system 'cls'
      banner
      first
      second
      third
      fourth
      fifth
    else
      puts "Thank you! Have a nice day!"
      break
    end
  when 'michael'
    puts $henn.car_details
    puts "Would you still like to know more about others' cars? [y/n]"
    sss = gets.chomp.downcase
    if sss=='y'
      system 'cls'
      banner
      first
      second
      third
      fourth
      fifth

    else
      puts "Thank you! Have a nice day!"
      break
    end
  when 'mario'
    puts $sal.car_details
    puts "Would you still like to know more about others' cars? [y/n]"
    sss = gets.chomp.downcase
    if sss=='y'
      system 'cls'
      banner
      first
      second
      third
      fourth
      fifth

    else
      puts "Thank you! Have a nice day!"
      break
    end
  when 'shirley'
    puts $ssc.car_details
    puts "Would you still like to know more about others' cars? [y/n]"
    sss = gets.chomp.downcase
    if sss=='y'
      system 'cls'
      banner
      first
      second
      third
      fourth
      fifth

    else
      puts "Thank you! Have a nice day!"
      break
    end
  when 'alain'
    puts $bug.car_details
    puts "Would you still like to know more about others' cars? [y/n]"
    sss = gets.chomp.downcase
    if sss=='y'
      system 'cls'
      banner
      first
      second
      third
      fourth
      fifth

    else
      puts "Thank you! Have a nice day!"
      break
    end
  end
end
