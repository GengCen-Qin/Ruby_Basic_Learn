# User.instance_eval 打开实例的作用域，这里的User是Class的实例

class User
end

# 这里是打开类的作用域 
User.class_eval do
  # 这里定义就是实例方法
  def hello
    'hello'
  end
end

# 这里是打开实例的作用域 User是Class的实例，可以通过User.class 查看
User.instance_eval do
  # 这里定义的类方法
  def hi
    'hi'
  end
end

# class_eval 与 instance_eval 的关系