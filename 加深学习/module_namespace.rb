# 因为作用域的问题，比如两个module 定义了同样的函数，则默认会进行覆盖，所以引入名称空间
# Module
# Class
# Constants
module Management
  COMPANY_NAME = "新东方"
  module Track
    def track
      "track from Track module"
    end
  end

  class User
    def hello
      'hello from User class'
    end
  end
end
# 模块儿访问内部类，或者常量，可以使用类似文件操作费 :: 
puts Management::COMPANY_NAME
include Management::Track
puts track
user = Management::User.new
puts user.hello
