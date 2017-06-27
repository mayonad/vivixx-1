puts "Type in the file name: "
filename = gets.chomp
# Open file in append-plus-read mode and store reference in opened_file variable
opened_file = File.open(filename, 'a+')
# Ask for a new city name
puts "Add another Australian city: "
city = gets.chomp

# Write city name to the file
opened_file.write(city)
opened_file.write("\n")

# Rewind pointer at beginning of file
opened_file.rewind
puts "=" * 15
# Read entire file from beginning to end
print opened_file.read
# We are done with the file

opened_file.foreach do |xxx|
  puts "#{line}"
end
    #=> a
    #=> b
    #=> c
    #=> あ
    #=> い
    #=> う
    #=> え
    #=> お

opened_file.close

#読み込む（R:read）
#書き込む（W:write）
#元々あるデータの末尾から付け加える（A:append)

#"r" : 読み込みモード
#"r+" : 読み書き両用モード
#"w" : 新規作成書き込みモード
#"w+" : 新規作成読み書き両用モード
#"a" : 追加書き込みモード
#"a+" : 追加読み書き両用モード
# +を付け加えると読み下書き両方できる！！
