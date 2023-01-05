class Computer
	def initialize(computer_id,data_source)
		@id = computer_id
		@data_source = data_source
	end

	def method_miss(name,*args)
		# 判断@data_source是否有这个方法？如果没有则调用super.method_miss,也就是未找到该方法
		super if !@data_source.respond_to?("get_#{name}_info")
		# 如果有这个方法
		info = @data_source.send("get_#{name}_info",@id)
		price = @data_source.send("get_#{name}_price",@id)
		result = "#{name}: #{info} : (#{price})"
		result = "*" + result if price > 99
		return result
	end
end