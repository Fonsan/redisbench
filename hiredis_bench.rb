require 'bundler/setup'
require 'redis/connection/hiredis'
require 'redis'
require 'benchmark'

r = Redis.new
r.flushall
puts Benchmark.measure {
  10.times do
    r.pipelined do
      80000.times do |i|
        r.incrby "prefix#{i}", i
      end
    end
  end
}