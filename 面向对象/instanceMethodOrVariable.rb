# 实例方法
# 实例变量
class User

  # 替代get/set方法
  attr_reader :name,:age
  attr_writer :name,:age

  # 替换上面的方式
  attr_accessor :name,:age

  def initialize name,age
    @name = name
    @age = age
  end

  # def name
  #   @name
  # end

  # def age
  #   @age
  # end

  # # setter 这里注意变量名为 name= ，那我们定义时操作费可以作为方法名
  # def name= name
  #   @name = name
  # end

  # def age= age
  #   @age = age
  # end
  
end

user = User.new "hello",18
p user.name
p user.age
user.name = "秦四海层"
p user.name