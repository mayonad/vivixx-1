
# Ask for the fileneme
puts "Type in the file name: "
filename = gets.chomp

# Open file and sabe it to opened_file variable
opend_file = File.open(filename)

# File.openはファイルをオープンし、Fileオブジェクトを返す
# Print to the terminal screen
puts "Opend file name#{filename}"
puts "=" * 15
print opened_file.read
