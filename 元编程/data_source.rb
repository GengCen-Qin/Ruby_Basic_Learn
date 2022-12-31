class DS
	def initialize ; end# 连接数据源

	def get_cpu_info(id) ; end
	def get_cpu_price(id) ; end

	def get_mouse_info(id) ; end
	def get_mouse_price(id) ; end

	def get_keyBoard_info(id) ; end
	def get_keyBoard_price(id) ; end
end
ds = DS.new
ds.get_cpu_info(1)
ds.get_cpu_price(1)
ds.get_mouse_info(1)
ds.get_mouse_price(1)
