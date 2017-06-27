system 'cls'

def banner1
  puts " "
end

def banner2
  put "="*45
end

system 'cls'
puts "A car app".center(40, '*')

banner1

puts "What is your name?"
$i = gets.chomp

puts "Hi,#{$i}! Please enter your passward for your login."

def passward
require "io/console"
puts "Please enter your 4-digit password."
banner1
print "Password: "
input = STDIN.noecho &:gets
print "\n"
puts "Entered => #{input}"
end

passward

class Car
  attr_accessor :make, :age, :speed, :gas
  def initialize(make, age, speed, gas)
    @make = make
    @age = age
    @speed = speed
    @gas = gas
  end
end

system "cls"


info1 = Car.new("Toyota", 20, 150, 60)
puts "The Car's information!"
puts "Make: #{info1.make}"
puts "Age: #{info1.age}"
puts "speed: #{info1.speed}"
puts "Gas: #{info1.gas}"

class Driver
  attr_accessor :name, :car, :age, :contact
  def initialize(name, car, age, contact)
    @name = name
    @car = car
    @age = age
    @contact = contact
  end
end

puts "*"*40
info2 = Driver.new("Taku", "Toyota", 35, 9012345678)
puts "The driver's information!"
puts "Name: #{info2.name}"
puts "Car: #{info2.car}"
puts "Age: #{info2.age}"
puts "Contact: #{info2.contact}"

puts ""
puts "Thank you"
