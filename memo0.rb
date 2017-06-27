val = 1
flag = true
#定義

while val < 5
  while flag
    puts("whileを入れ子にする")
    flag = false
  end
  flag = true
  val += 1
end


#1
#　while flag
#  puts("whileを入れ子にする")
#　end

#2
#　while val < 5
#　flag = true
#　val += 1
#　end
