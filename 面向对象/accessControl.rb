# public    外部实例可访问
# protected 实例内部访问
# private   子类无法访问
class User
	public
	def say_hello 
		puts "hello..."
		say_hi
		say_hey
	end

	protected
	def say_hi
		puts "hi"
	end

	private
	def say_hey
		puts "hey"
	end

	# 也可以定义为以下方式：
	private :say_hey,:say_hi
end
user = User.new 
user.say_hello