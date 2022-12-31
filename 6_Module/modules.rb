# 模块儿的功能
# namespace 独立名称空间
# mixin ：实现类似多类继承的功能
# storage 存储常量信息

# module: 声明一个模块
# include: 把一个module的方法注入为实例方法
# extend: 把一个module的方法注入为类方法

# 模块儿需要提前定义
module Management
	def company_notified
		puts "查看某些私密数据"
	end
end

class User
	attr_accessor :name,:age
	def initialize name,age
		@name = name
		@age = age
	end
end

class Admin < User
	# 这里Admin就拥有了模块中定义的实例方法
	include Management
end

class Staff < User
	include Management
end





admin = Admin.new "qsc",12
admin.company_notified