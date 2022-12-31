# class MyClass
# 	def method(content)
# 	end
# end
# obj = MyClass.new
# obj.method "Hello World"
# # 动态派发和上面普通调用的结果是一样的
# obj.send(:method,"Hello World")

class MyClass
	# 这里就是定义了一个实例方法
	define_method :my_method do |my_arg|
		my_arg * 3
	end
end
obj = MyClass.new 
obj.my_method 2