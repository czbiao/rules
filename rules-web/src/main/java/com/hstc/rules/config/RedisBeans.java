//package com.hstc.rules.config;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.data.redis.cache.RedisCacheManager;
//import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
//import org.springframework.data.redis.core.RedisTemplate;
//import redis.clients.jedis.JedisPoolConfig;
//
///**
// * Created by linjingshan on 2018/04/30 23:25.
// *
// * @version : 1.0
// */
//@Configuration
//public class RedisBeans {
//
//    private RedisProperties redisProperties;
//
//    public RedisBeans(RedisProperties redisProperties) {
//        this.redisProperties = redisProperties;
//    }
//
//    @Bean
//    public JedisPoolConfig poolConfig() {
//        JedisPoolConfig poolConfig = new JedisPoolConfig();
//        poolConfig.setMaxIdle(redisProperties.getMaxIdle());
//        poolConfig.setMaxTotal(redisProperties.getMaxActive());
//        poolConfig.setMaxWaitMillis(redisProperties.getMaxWait());
//        poolConfig.setTestOnBorrow(redisProperties.isTestOnBorrow());
//        return poolConfig;
//    }
//
//    @Bean
//    public JedisConnectionFactory jedisConnectionFactory(JedisPoolConfig poolConfig) {
//        JedisConnectionFactory factory = new JedisConnectionFactory();
//        factory.setHostName(redisProperties.getHost());
//        factory.setPort(redisProperties.getPort());
//        factory.setPassword(redisProperties.getPass());
//        factory.setDatabase(redisProperties.getDbIndex());
//        factory.setPoolConfig(poolConfig);
//        return factory;
//    }
//
//    @Bean
//    public RedisTemplate redisTemplate(JedisConnectionFactory jedisConnectionFactory) {
//        RedisTemplate redisTemplate = new RedisTemplate();
//        redisTemplate.setConnectionFactory(jedisConnectionFactory);
//        return redisTemplate;
//    }
//
//    @Bean
//    public RedisCacheManager redisCacheManager(RedisTemplate redisTemplate) {
//        RedisCacheManager manager = new RedisCacheManager(redisTemplate);
//        manager.setDefaultExpiration(redisProperties.getExpiration());
//        return manager;
//    }
//}
