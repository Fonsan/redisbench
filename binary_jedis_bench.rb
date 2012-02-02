require 'bundler/setup'
#require 'perftools'
require 'java'
require 'jedis-2.0.0.jar'
import "redis.clients.jedis.BinaryJedis"
require 'benchmark'
#require "redis/connection/hiredis"
#PerfTools::CpuProfiler.start("prof") do
puts Benchmark.measure {
  r = BinaryJedis.new('localhost')
  10.times do
    p = r.pipelined
    #r.pipelined do
      80000.times do |i|
        p.incr_by "prefix#{i}".to_java_bytes, i
      end
    #end
    p.sync
  end
}
#end
