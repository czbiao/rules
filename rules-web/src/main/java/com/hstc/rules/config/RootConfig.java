package com.hstc.rules.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 * Created by linjingshan on 18-6-2.
 */
@Configuration
@ComponentScan(basePackages = {"com.hstc.rules"},
        excludeFilters = {
          @ComponentScan.Filter(type = FilterType.ANNOTATION, value = EnableWebMvc.class)
        })
public class RootConfig {
}
