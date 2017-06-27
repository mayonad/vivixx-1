
class 
def diamond(width, padding=' ')
  return if width.zero?
  width += 1 if width.odd?

  puts("*".center(width))
  max = width - 2
  interval = 1
  interval.step(max, 2) do |i|
    puts("*#{padding * i}*".center(width))
    sleep(0.1)
  end
  max -= 3
  max.step(interval, -2) do |i|
    puts("*#{padding * i}*".center(width))
    sleep(0.1)
  end
  puts("*".center(width))
  sleep(0.1)
end

diamond(30)
