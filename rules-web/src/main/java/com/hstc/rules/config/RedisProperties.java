package com.hstc.rules.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

/**
 * Created by linjingshan on 2018/04/30 23:56.
 *
 * @version : 1.0
 */
@PropertySource({"classpath:redis.properties"})
@Component("redisProperties")
public class RedisProperties {
    @Value("${host}")
    private String host;

    @Value("${port}")
    private int port;

    @Value("${pass}")
    private String pass;

    @Value("${dbIndex}")
    private int dbIndex;

    @Value("${expiration}")
    private long expiration;

    @Value("${maxIdle}")
    private int maxIdle;

    @Value("${maxActive}")
    private int maxActive;

    @Value("${maxWait}")
    private long maxWait;

    @Value("${testOnBorrow}")
    private boolean testOnBorrow;

    public String getHost() {
        return host;
    }

    public int getPort() {
        return port;
    }

    public String getPass() {
        return pass;
    }

    public int getDbIndex() {
        return dbIndex;
    }

    public long getExpiration() {
        return expiration;
    }

    public int getMaxIdle() {
        return maxIdle;
    }

    public int getMaxActive() {
        return maxActive;
    }

    public long getMaxWait() {
        return maxWait;
    }

    public boolean isTestOnBorrow() {
        return testOnBorrow;
    }
}
