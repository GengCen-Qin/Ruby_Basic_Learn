# 先把自己写的Gem，把文件路径加入$LOAD_PATH
$LOAD_PATH << FIle.expand_path("../track/lib",__FILE__ )

# 然后才能加载到
require 'track'
require 'net/http'

# 使用
puts Track::VERSION
puts Track::Parser.parse