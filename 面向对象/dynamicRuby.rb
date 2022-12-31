# ruby 的动态性
# attr_accessor 方法从哪来的

class User
end

p User.class
# 类对象本身是Class类的一个实例
# Class.attr_accessor => define_method 定义一个方法

define_method :hello do
	puts "Hello world"	
end
hello

class User
	def self.setup_accessor var
		define_method var do
			instance_variable_get "@#{var}"
		end
		define_method "#{var}=" do |value|
			instance_variable_set "@#{var}", value
		end
	end

	setup_accessor :name
	setup_accessor :age

	def initialize name,age
		@name = name
		@age = age
	end
end
user = User.new "qsc",12
p user.name
p user.age









