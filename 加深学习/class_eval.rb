# class_eval 只有类才能调用，重新打开当前类的作用域
# Class#class_eval
# 一般 #实例方法  .类方法

class User
end

# 重新打开User的作用域
User.class_eval do
  # 修改内部实例和方法
  attr_accessor :name

  def hello
    'hello'
  end
end

user = User.new
user.name = "343"

p user.name
p user.hello

#------------------------------
# Class.class_eval 从新打开当前类的作用域
module Management
  # 当Management被引入时触发，base表示引入类的Class
  def self.included base
    # 让引入类，引入ClassMethods
    base.extend ClassMethods

    #这里使用Class.class_eval，就是可以做一些自动化的初始操作
    base.class_eval do
      # 执行下面的 setup_attribute，而这个方法来源于ClassMethods
      setup_attribute
    end
  end

  module ClassMethods
    def setup_attribute
      puts "setup_attribute"
    end
  end
end
class User
  include Management
end