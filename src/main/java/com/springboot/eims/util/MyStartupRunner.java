package com.springboot.eims.util;

import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import com.springboot.eims.privi.Group;

@Component
@Order(value=1)
public class MyStartupRunner implements CommandLineRunner {

    @Override
    public void run(String... args) throws Exception {
	Group.init();
    }

}
