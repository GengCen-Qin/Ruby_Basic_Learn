# 代码规范
# UTF-8
# 使用空格缩进 1tab = 2spaces
# 不需要 ; 和 \ 连接代码

# 局部变量 ： a = 1, user_name = 'qsc' 这里定义变量不使用驼峰
# 常量 ：Names = ['join'] 大写字母开头, 常量表示最好不要修改的内容，如果修改，编译器会爆出warning
# 全局变量 ：$platform = 'world'
# 实例变量 ：@name = "qsc"
# 类变量 ：@@counter = 20

Name = '323'
Name = '3232' # 会爆出warning
Name.replace '123'  # 更安全，这里是直接替换一个新的字符

class User
  # 定义实例变量 并提供读取方法，如果不定义，无法访问到
  attr_reader :name
  @@counter = 0
  def initialize name
    @name = name
    @@counter += 1
  end
  def get_counter
    @@counter
  end
end
user = User.new "秦思成"
p user.name
p user.get_counter

def hello
  p $$   # => 进程号
  p $:   # => ruby的加载路径,也就是$LOAD_PATH
end

# Boolean 表达式
puts true and true
puts true and false
puts true or false
puts (not true)

# || && and or not 这里的优先级是不同的  || && = 的优先级更高
a = nil
b = a or 10  # = 优先级 大于 or ，所以这里是先 b=a 的赋值操作
puts b

# String , Hash , Array
a = "hello world"
a.empty? # => false  这里是每个字符串都有 .empty? 方法判断
# 约定如果方法返回值为 布尔值 ，则函数名后加 ?
a[0] = "a" # => aello world

a.freeze  # 冻结字符串 ，不允许修改
# a[0] = "h"  # => raise error
a = "hello "  # => 这里就可以，因为是直接赋值新的字符
a.reverse  # 逆序
a.sub "o","A" # 替换o用A ，替换第一个
a.gsub "o","A" # 全局修改
a.start_with? "h"
a.end_with? "d"
a.include? "o"
b = a.split ' ' # 拆分
b.join ' ' # 合并

# 字符串传递值  是传递的内存地址
a = "hello "
b = a.dup  # 复制一份
b[0] = "A"
# a.clone 和 a.dup 有什么区别

a.clear
a.find {|x| x == 'hours'}
a.map {|x| x.upcase}
a.collect { |x| x.upcase }

a.uniq
a.flatten
a.sort
a.count

# HASH
a = {name: 'asd', age: 18}
a.each { |key,value| puts key,value }
a.keys
a.values
a.has_key? :name
a.delete :name
a.delete_if  {这里传递block}


# 其他函数操作
def hello
  p "hello world"
end
# 通过函数名，调用
send(:hello)
a = "hello"
# 判断对象是否有 length方法  感觉类似Java中的反射
puts a.respond_to?(:length)