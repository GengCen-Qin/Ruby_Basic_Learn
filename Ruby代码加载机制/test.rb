# $LOAD_PATH 表示Ruby加载时会默认加载这些文件
#
# 命名规则  Ruby中文件名一般使用小写，Ruby也会做预判
# 比如我们创建了 user_session.rb 那么我们内部应该定义类或模块儿为 UserSession
p $LOAD_PATH

p $: