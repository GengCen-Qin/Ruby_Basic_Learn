# Block 类似于一个匿名方法 一般使用 do end 定义，或者用 {} , 我们下面举个例子
(1..3).each do |x|
  # 定义Block，each每次传递到|x| 中
  p x
end

{ a: 1, b: 2 }.each { |x, y|
  p x, y
}

# Block 变量作用域
x = 10
(1..3).each do |x|
  p x # 1 , 2 , 3
end
# Block 内变量赋值不会影响外部的上下文，当然如果是复制操作，则可以修改外界变量
p x # => 10

# 自定义Block
def hi name
  # yield 主动调用外部传入的Block
  yield(name)
end
# 调用hi方法，传入参数 'code',传入Block 则为do 到 end
hi 'code' do |x|
  "hello #{x}"
end

# proc 自定义Block，这样我们可以方便的传递Block
hi = proc { |x| "hello #{x}" }
# 调用自身
hi.call "world"
hi = Proc.new { |x| "hello #{x}" }
hi.call "world"

# lambda
hi = lambda { |x| "hello #{x}" }
hi.call "world"
# lambda 的另一种表现形式
hi = ->(x) { x + 1 }
hi.call 1

# lambda 和 proc 的区别是什么？
# 1. 关键字不同，
# 2. lambda 会检查实参与形参数量是否一致，如果不同则报错，proc不会检查，多余参数会忽略，不足则为nil
# 3. lambda 会按照 `return` 返回，proc会立刻结束执行
# lambda 更像是一个函数

def test
  puts "在 test 方法内"
  # 可以使用 yield 语句来调用块。
  yield
  puts "你又回到了 test 方法内"
  yield
end
test { puts "你在块内" }

# 利用yield 给快儿中传递参数
def test
  yield 5
  puts "在 test 方法内"
  yield 100
end

test { |i| puts "你在块 #{i} 内" }

def test
  yield 5, 12
  puts "在 test 方法内"
  yield 100, 102
end

test { |i, k| puts "你在块 #{i} : #{k} 内" }

# 函数参数中 带有&可以传递块儿
def test(&block)
  # 这种方式就是显性的需要一个block，而且可以传递给其他方法
  # 如果使用yield，会直接执行block
  block.call
end

test { puts "Hello World!" }

def hello
  # block_given?  关键字 判断有没有传递block
  if block_given?
    yield
  else
    puts "Hello from method"
  end
end

hello { puts "this is inner blocl" }

def counter
  # block 的作用域就是上下文，但是使用时需要注意
  sum = 0
  # 这里counter函数，返回的就是这里定义的Block
  proc { |x| x = 1 unless x; sum += x }
end
count = counter
p count.call  # => 1
p count.call 1  # => 2
p count.call 2  # => 4
p count.call 3  # => 7

## BEGIN 和 END就是经典的块儿