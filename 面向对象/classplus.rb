# Class 进阶知识

# 查看对象是哪个类的实例
Array.class

# 查看父类信息
Array.superclass # => Object
Object.superclass # => BasicObject
BasicObject.superclass # => nil

# 查看类的继承关系并包含模块儿
Array.ancestors

# 方法和变量  自下而上寻找

# 方法覆盖，class 和 module 可以重新打开
class User
	def hi
		puts "hi 您好啊 " 
	end
end

# 上面已经定义了一个User，下面继续定义一个User
# 如果定义同名方法，则覆盖，如果定义未有方法，则添加
class User
	def hello 
		puts "hello 您好啊"
	end
end

user = User.new
user.hi
user.hello

# Ruby的动态性，也体现在对Ruby定义的类也可以做修改
class Array
	def to_hello_world
	puts "hello world"
	end
end
a = [1,2,3,4]
# 这里就可以看到数组具有新的，我们定义的方法
a.to_hello_world




