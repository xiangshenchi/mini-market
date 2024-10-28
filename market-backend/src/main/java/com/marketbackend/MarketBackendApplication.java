package com.marketbackend;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.marketbackend.mapper")
public class MarketBackendApplication {

    public static void main(String[] args) {
        SpringApplication.run(MarketBackendApplication.class, args);
    }

}
