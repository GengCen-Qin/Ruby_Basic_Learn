
age=0
# while 循环
puts "while循环------"
while age<10
  puts age+=1
end

puts "until循环------"
# until 循环 与 while取反
until age<0
  puts age-=1
end
puts "for循环------"

# Loop 无限循环，使用break打断
a = 10
loop do
  break if a <= 0
  puts a
  a -= 1
end

# for 循环
for age in (1..10)
  puts age
end

# 变向for循环
(1..5).each do
  |i| puts i
end

# 表示后面的 块儿执行10次
10.times do |i|
  puts i
end

# Break语句打断
(1..5).each do |i|
  puts i
  break
end

# next语句 类似于continue
for i in (1..5)
  if i < 2
    next
  end
  puts "局部变量的值为 #{i}"
end

# redo 重新开始内部循环
for i in 0..5
  if i < 2 then
    puts "局部变量的值为 #{i}"
    redo
  end
end

# retry 在begin表达式中的rescue子句中
$num=0
begin
  puts 1/$num
rescue
  # 处理错误
  $num += 1
  retry  # 重新从 begin 开始
end