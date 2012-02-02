require 'bundler/setup'
#require 'perftools'
require 'java'
$CLASSPATH << 'ext' << 'ext/jedis-2.0.0.jar'
import 'redis.clients.jedis.BinaryJedis'
import 'jedis.RubyJedis'
require 'benchmark'
#require "redis/connection/hiredis"
#PerfTools::CpuProfiler.start("prof") do
puts Benchmark.measure {
  r = RubyJedis.new('localhost')
  10.times do
    p = r.pipelined
    #r.pipelined do
      80000.times do |i|
        p.incr_by "prefix#{i}", i
      end
    #end
    p.sync
  end
}
#end
