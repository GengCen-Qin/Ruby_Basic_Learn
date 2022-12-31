=begin
局部变量 ：仅在方法中定义与使用
实例变量 ：@变量名 跨方法使用
类变量   ： @@变量名  跨对象使用
全局变量 ：$变量名 跨类使用
=end

$temp = 0
class User
  # 定义类变量 User::counter
  @@counter = 0
  # 这里相当于构造器函数，当调用new时，触发该函数
  def initialize(name,age,gender)
    # 定义实例变量，外界一般无法访问，如果想访问需要定义 attr_accessor :name
    @name = name
    @age = age
    @gender = gender
  end

  def toString()
    puts "姓名：#@name ，年龄：#{@age} ，性别：#@gender"
  end
end

user = User.new("Tom", 12, "male")

p user.toString