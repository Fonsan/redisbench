rvm-shell jruby -c 'javac -cp $MY_RUBY_HOME/lib/jruby.jar:ext/jedis-2.0.0.jar ext/jedis/RubyJedis.java'

echo "1.9.3 redis"
rvm 1.9.3 do ruby redis_bench.rb
echo "1.9.3 hiredis"
rvm 1.9.3 do ruby hiredis_bench.rb
echo "jruby redis"
rvm jruby do ruby redis_bench.rb
echo "jruby jedis"
rvm jruby do ruby jedis_bench.rb
echo "jruby binary jedis"
rvm jruby do ruby binary_jedis_bench.rb
echo "jruby ruby jedis"
rvm jruby do ruby ruby_jedis_bench.rb