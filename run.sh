echo "1.9.3 redis"
rvm 1.9.3 do ruby redis_bench.rb
echo "1.9.3 hiredis"
rvm 1.9.3 do ruby hiredis_bench.rb
echo "jruby redis"
rvm jruby do ruby redis_bench.rb
echo "jruby jedis"
rvm jruby do ruby jedis_bench.rb