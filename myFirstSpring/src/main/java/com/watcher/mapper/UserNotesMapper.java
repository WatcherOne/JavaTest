package com.watcher.mapper;

import com.watcher.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

/*
 *  Mapper 相当于 Dao, 不同在于: Mapper 仅仅是接口，不需要提供实现类
 *  @Mapper注解表示这是一个 mybatis 的mapper类
 *  也可以使用 @MapperScan("system.mapper"),只要就不需要每个接口上配置Mapper注解
 *  @Repository注解，spring生成一个注解，自动注入到service相关引用中去
 *  [不加也可以，只是会在service引用的时候报警告]
 */

@Repository
public interface UserNotesMapper {

    /*dao
     * Mybatis面对接口编程的两个一致
     * 1.映射文件的namespace要和Mapper接口的全类名保持一致
     * 2.映射文件中SQL语句的id要和Mapper接口中的方法名一致
     */

    // 可以通过 注解的方式 不需要 xml文件
    // 如：@Select("select * from user")
    List<User> getUserList();

    // @Param("column") 命名参数：将传入的参数用自定义的命名值传入 xml
    // 不使用该注解则用本身变量名
    // @Param(value = "column") 的简写
    List<User> getUserListByColumn(String column, String value);

    int addUser(User user);

    int updateUser(User user);
}
