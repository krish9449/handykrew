package com.handykrew.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@Import(HKPersistenceConfig.class)
@ComponentScan(basePackages = {"com.handykrew.service.system" , "com.handykrew.service.useraccount"})
public class HKRootConfig {

}
