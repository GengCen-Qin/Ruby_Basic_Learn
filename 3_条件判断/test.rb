$Age = 12

# 正向操作  if
if $Age == 5
  puts "我今年：#{$Age} 岁了"
elsif $Age == 10
  puts "我长大啦：#{$Age} 岁了"
else
  puts "我老了：#{$Age} 岁了"
end
# Ruby中的一种表达方式
print "debug\n" if $Age

# 反向操作  unless

# unless 与 if 相反，如果为假则执行
unless $Age == 10
  print "我今年：#{$Age} 岁了"
end

# 在ruby中 否认条件只有 false 和 nil ，0会表示true

# case  功能强大的多
case a
when 1  # 判断是否为1
  1
when /hello/  # 匹配正则
  "hello world"
when Array  # 判断是否为数组
  []
else
  'ok'
end

