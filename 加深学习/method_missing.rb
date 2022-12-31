# Ruby是一门动态语言，在方法调用上，只有最终找不到目标方法才报错，编译器是不会报错的，
# 这就和Java有着本质的区别，Java中调用方法，编译器就会看是否有匹配的方法

class User
  # 当User实例调用的方法找不到时，就会来到这里，这极大的增加了灵活性，比如在运行时修改类的内部信息
  private def method_missing(symbol, *args)
    "method name is #{symbol},parameters is #{args}"
  end
end

user = User.new
puts user.hello

p user.hi("qsc","123")