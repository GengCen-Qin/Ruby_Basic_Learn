module Manager
	def company_notify
		'company_notify_manager'
	end
end

class User
	# [User, Manager, Object, Kernel, BasicObject]
	# include Manager
	# [Manager, User, Object, Kernel, BasicObject] 讲模块儿的优先级提前
	# prepend Manager  转为类方法
	extend Manager

	def company_notify
		'company_notify_user'
	end
end
# 打印访问优先级
p User.ancestors
p User.company_notify

	