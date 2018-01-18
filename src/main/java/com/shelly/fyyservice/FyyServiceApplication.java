package com.shelly.fyyservice;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@ComponentScan("com.shelly.fyyservice")
@MapperScan("com.shelly.fyyservice.mapper")
@EnableTransactionManagement
public class FyyServiceApplication {

	public static void main(String[] args) {

		ConfigurableApplicationContext context = SpringApplication.run(FyyServiceApplication.class, args);
		ConfigurableEnvironment environment = context.getEnvironment();
		String port = environment.getProperty("server.port");
		String url = environment.getProperty("server.port");
		System.out.println("fyyservice服务ip：" + "端口：" +port+ "启动...........................");
	}
}
