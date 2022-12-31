# 类方法 类变量  例如 java中static修饰
class User
	# 实例变量
	@@counter = 1
	@@name = "qsc"
	# 实例方法
	def User.get_counter
		@@counter
	end

	def self.get_name
		@@name
	end
end
p User.get_counter
p User.get_name
# 类方法无法访问到实例变量