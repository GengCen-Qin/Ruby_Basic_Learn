class Computer
	def initialize(computer_id,data_source)
		@id = computer_id
		@data_source = data_source
		data_source.methods.grep(/^get_(.*)_info$/ |) {
			# 被正则表达式匹配到的方法，会依次调用这里传递的块儿，并将内容封装到 $1 全局变量中
			Computer.define_companent $1
		}
	end

	def self.define_companent(name)
		define_method(name) do
			info = @data_source.send("get_#{name}_info",@id)
			price = @data_source.send("get_#{name}_price",@id)
			result = "#{name}: #{info} : (#{price})"
			result = "*" + result if price > 99
			return result
		end
	end
end