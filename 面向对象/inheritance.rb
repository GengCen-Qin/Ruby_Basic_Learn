# 继承
class User
	attr_accessor :name,:age
	def initialize name,age
		@name = name
		@age = age
	end

	def panels
		# ||= 表示前面如果为nil 则赋值，如果不是则直接返回
		@panels ||= ['Profile','Products']
	end
end

# Ruby是单继承
class Admin < User
	# 这里就可以覆盖父类的方法
	def panels
		@panels ||= ['Profile','Products','Manager User']
	end
end

admin = Admin.new "qsc",12
p admin.panels
p admin.name
p admin.age

# 查看一个类所属父类
p Admin.superclass

# super self 使用
class SuperMan < User
	def panels
		super  #会直接找同名的父类方法定义
		@panels.concat(['Manager User'])
	end

	def to_s
		# 这里调用的实际上是 name的get方法
		"#{self.name} is #{self.age}"
	end

	def to_s
		name = "hello"
		# 如果是直接访问name，则指向上面的name
		# 如果是访问 self.name，则指向@name
		"#{name} is #{age}"
	end

	# 定义实例方法
	def self.category
		"User"
	end

	# 如果定义大量的 类方法，则可以用下面的声明
	class << self
		def category
			"User"
		end
	end
end

man = SuperMan.new "秦思成",12
p man.panels
p man.to_s



