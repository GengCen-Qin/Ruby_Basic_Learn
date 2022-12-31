=begin
------------------
整形(Integer)
Ruby 中的整形有多种表现形式：
123                  # Fixnum 十进制
1_234                # Fixnum 带有下划线的十进制（这一点真的很方便）
-500                 # 负的 Fixnum
0377                 # 八进制
0xff                 # 十六进制
0b1011               # 二进制
?a                   # 'a' 的字符编码
?\n                  # 换行符（0x0a）的编码
12345678901234567890 # Bignum
------------------
浮点型
123.4                # 浮点值
1.0e6=1_000_000      # 科学记数法
=end

# 算术操作 : +-*/  指数操作：**
puts 2**(1/4)     #1与4的商为0，然后2的0次方为1
puts 16**(1/4.0)  #1与4.0的商为0.25（四分之一），然后开四次方根

# 字符串 \做转义
puts 'escape using "\\"'
puts 'That\'s right'
# #{expr} 可以代替字符串内容
puts "Multiplication Value : #{24*60*60}"


# 数组 动态语言这里可以在数组内放置任意内容，但是会出现混乱
arr = [ "fred", 10, 3.14, "This is a string", "last element", ]
# 数组遍历 两种方式
# 方式1
arr.each { |i| puts i}
# 方式2
arr.each do |i|
  puts i
end

# Hash结构 key => value
colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
colors.each { |key,value|
  # puts 字符串按照逗号分割，会按照分割的部分分别进行puts
  # puts key , " is " , value
  print key , " is " , value , "\n"
}
# 范围类型 (a..b) 从 a到b   (a...b) 从 a到b-1
(3..8).each do
  |n| print n," "
end