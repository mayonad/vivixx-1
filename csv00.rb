require 'CSV'

class Person
 attr_accessor :firstname, :lastname, :suburb, :age, :gender
 #attr = アトリビュート　=　データ属性
 def initialize(hash)
 @firstname = hash[:firstname]
 @lastname = hash[:lastname]
 @suburb = hash[:suburb]
 @age = hash[:age]
 @gender = hash[:gender]
 end
end

 # Initialize from CSV::Row
 def self.from_csv_row(row)
 self.new({
 firstname: row['firstname'],
 lastname: row['lastname'],
 suburb: row['suburb'],
 age: row['age'].to_i,
 gender: row['gender']
 })
 end
end

require 'CSV'
class Person

 HEADERS = ['firstname', 'lastname', 'suburb', 'age', 'gender']
 # Convert to CSV::Row
 def to_csv_row
 CSV::Row.new(HEADERS, [firstname, lastname, suburb, age, gender])
 end
end

# Create new person
person = Person.new({
 firstname: "John",
 lastname: "Appleseed",
 suburb: "Brisbane",
 age: 42,
 gender: :male
})
# Append person to the CSV file
CSV.open('people.csv', 'a+') do |csv|
 csv << person.to_csv_row
end

people = []
# Loop over each row in the CSV
CSV.foreach('people.csv', headers: true) do |row|
 # Convert from CSV::Row to Person instance
 person = Person.from_csv_row(row)
 # Add object to array
 people << person
 # Display first and last name
 puts "#{person.firstname} #{person.lastname}"
end
