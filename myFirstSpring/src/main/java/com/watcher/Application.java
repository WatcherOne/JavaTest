package com.watcher;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 *  SpringBootApplication 注解表明这是一个SpringBoot应用，组合了3个注解
 *  1. @SpringBootConfiguration 声明该类为配置类（是@Configuration注解的特殊形式）
 *  2. @EnableAutoConfiguration 启动自动配置
 *  3. @ComponentScan 启动组件自动扫描,注册其它注解时Spring会自动发现并将其注册为Spring应用的上下文组件
 *  *- 这个启动类必须放在 包 里面！
 **/

@SpringBootApplication
@MapperScan(basePackages = {"com.watcher.mapper"})
public class Application {
    public static void main(String[] args) {
        // 执行应用的引导过程,即创建Spring的应用上下文
        SpringApplication.run(Application.class, args);
        // 直接跑起来就行，不用获得 SpringBoot 容器
        // ConfigurableApplicationContext applicationContext = 上文
        // applicationContext.getBean(UserService.class);
        System.out.println("*******************************************************************\n");
        System.out.println("Hello World!\n");
        System.out.println("*******************************************************************");
    }
}
