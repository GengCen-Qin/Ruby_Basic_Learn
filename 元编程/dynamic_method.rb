class Computer
	def initialize(computer_id,data_source)
		@id = computer_id
		@data_source = data_source
	end

	# 这里定义一个类方法
	def self.define_companent(name) 
		# 根据传入的Symbol，创建相应的方法
		define_method(name) do
			info = @data_source.send("get_#{name}_info",@id)
			price = @data_source.send("get_#{name}_price",@id)
			result = "#{name}: #{info} : (#{price})"
			result = "*" + result if price > 99
			return result
		end
	end
	
	define_companent :mouse
	define_companent :cpu
	define_companent :keyboard
end