package com.fc;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = DataSourceAutoConfiguration.class,scanBasePackages = "com.fc.v2")
public class V2Application {

    public static void main(String[] args) {
        SpringApplication.run(V2Application.class, args);
    }

}
