# 正则匹配  正向匹配
puts /hello/i =~ "hello world"
# 反向匹配
puts /343/i !~ "hello world"

def hello
  'hello'
end
# 起别名 将原本 hello 再叫一个名字 old_hello
alias old_hello hello
def hello
  'new hello'
end
puts hello
puts old_hello