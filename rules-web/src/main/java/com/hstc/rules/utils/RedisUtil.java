package com.hstc.rules.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by linjingshan on 2018/05/01 01:28.
 *
 * @version : 1.0
 */
public class RedisUtil {

    public static Map<String, Long> getExpries() {
        Map<String, Long> expires = new HashMap<String, Long>();
        /*单个题目10天不会过期*/
        expires.put("title", (10 * 24 * 60 * 60L));
        expires.put("practice", (1 * 60 * 60L));
        return expires.size() == 0 ? null : expires;
    }
}
