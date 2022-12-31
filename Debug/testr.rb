# 使用 'byebug'
# Ruby中想使用断点工具，可以谁用 gem install bytebug

# 引入 bytebug
require 'byebug'

# 这里使用bytebug 当程序执行到这里，会暂停，并可以输出当前作用域的值
def hello name
  byebug
  puts name
end

hello 'qsc'