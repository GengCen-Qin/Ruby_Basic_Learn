class User
	def method_missing(method,*args)
		puts "我是所有丢失消息的重点"
	end
end

obj = User.new 
obj.hi