# 函数的知识

def hi(name)
  p "hi" + " " + name  # p 就是puts的缩写，字符串可做拼接操作
end
# ruby的一个特点就是可以像Unix一样 空格传递参数
hi '秦思成'
hi('秦思成')
# 这里定义一个hello函数，传递参数name
def hello name
  p "hello #{name}"
end
hello "秦思成"
# Method可以往参数中传递默认值
def hi name = '秦思成'
  p "hi #{name}"
end
hi "唐玲玲"
def hi name,age = 32
  p "#{name} is #{age}"
end
hi "唐玲玲",20
# Method都有返回值，可以隐形或显性的放回
def hi name,age = 32
  p "ok" # 这里p函数 返回的是nil
end
def hi_
  'ok' # 这里返回的就是 ok
end
def hi_
  return '2'  # return 就代表代码结束，后面无法执行
  1
end
p hi_