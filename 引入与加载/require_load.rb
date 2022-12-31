# require vs load
# 相同点：都在$LOAD_PATH下面查找要引入的文件
# 不同点：require调用时不需要".rb"后缀，load需要
# require对同样的文件只调用一次，load可以反复调用

puts require 'net/http'
puts require 'net/http'

# load一般可以用在自己写脚本，如果用require可能不会更新，使用load强制刷新
puts load 'net/http.rb'
puts load 'net/http.rb'

puts Net::HTTP


