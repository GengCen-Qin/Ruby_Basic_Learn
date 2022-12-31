# StandardError
# SyntaxError
# RuntimeError
# ArgumentError
# NameError

def hello name
  # 主动抛出一个异常，均属于runtimeError
  raise name
end

begin
  hello "测试"
  # rescue 捕获异常
rescue RuntimeError
  p "捕获到一个RuntimeError了"
end

begin
  hello "测试"
#  我们一般可能无法知道会有哪些异常发生
rescue => e
  p "catch exception with name: #{e.class}"
else
  p "没有发生异常所执行的"
ensure
  p "不过有没有异常都会执行的代码，类似java中的 finally"
end

