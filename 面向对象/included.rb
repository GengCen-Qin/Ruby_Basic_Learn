# included method
module Management
  # 当被引入时，并自动调用，base传入的类
  def self.included base
    puts "Management is being include into #{base}"
    base.include InstanceMethods
    base.extend ClassMethods
  end
  # 定义实例方法
  module InstanceMethods
    def company_notifies
      "company notifies from Management"
    end
  end
  # 定义类方法
  module ClassMethods
    def progress
      'progress'
    end
  end
end

class User
  include Management
end
puts '-'*30
user = User.new
puts user.company_notifies
puts '-'*30
puts User.progress
