package jedis;

import redis.clients.jedis.BinaryJedis;
import redis.clients.jedis.JedisShardInfo;

import org.jruby.RubyString;
import org.jruby.RubyFixnum;

public class RubyJedis extends BinaryJedis {
    public RubyJedis(final String host) {
        super(host);
    }

    public RubyJedis(final String host, final int port) {
      super(host, port);
    }

    public RubyJedis(final String host, final int port, final int timeout) {
      super(host, port, timeout);
    }

    public RubyJedis(final JedisShardInfo shardInfo) {
      super(shardInfo);
    }

    public Long incrBy(final RubyString key, final RubyFixnum integer) {
        return super.incrBy(key.getBytes(), integer.getLongValue());
    }
}