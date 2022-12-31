# 标准输出
val = "this is variable a"
val1 = "this is variable b"
puts val
puts val1
# 标准输入
puts "请输入您的账号："
account = gets
puts "您的账号是 ：#{account}"
# putc 语句，输出第一个字符
str = "Hello Ruby!"
putc str
# print 输出不换行


# 文件IO File.new
aFile = File.new("../a.txt", "r")
if aFile
  content = aFile.sysread(10)
  puts content
else
  puts "Unable to open File"
end

# each_byte 方法 遍历字符
aFile = File.new("input.txt", "w+")
if aFile
  aFile.syswrite("ABCDEF \n 123456")
  aFile.rewind
  aFile.each_byte {|ch| putc ch; putc ?. }
else
  puts "Unable to open file"
end

IO.readlines 读取多行 填充到数组
arr = IO.readlines("input.txt")
puts "IO.readLine: #{arr}"

# IO.foreach 方法 循环迭代 每次返回一行
IO.foreach("input.txt"){|block| puts block}

#  rename 和 delete 方法重命名和删除文件。
File.rename("input.txt","outPut.txt")
File.delete("input.txt")

# 文件模式和权限 linux下文件通过chomd修改权限
file = File.new("text.txt", "w")
file.chmod(0755)

# 文件是否存在
File.open("file.rb") if File::exist?("file.rb")
# 判断是否为文件
File.file?("text.txt")
# 判断是否为目录
File.directory?("/usr/locl/bin")

# 判断文件是否可读可写可执行
File.readable?("")
File.writable?("")
File.executable("")