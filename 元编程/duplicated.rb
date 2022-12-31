class Computer
	def initialize(computer_id,data_source)
		@id = computer_id
		@data_source = data_source
	end

	def mouse
		companent :mouse
	end

	def cpu
		companent :cpu
	end

	def companent(name)
		info = @data_source.send("get_#{name}_info",@id)
		price = @data_source.send("get_#{name}_price",@id)
		result = "#{name}: #{info} : (#{price})"
		result = "*" + result if price > 99
		return result
	end
	# ... 类似操作
end