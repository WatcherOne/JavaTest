package com.watcher.mapper;

import com.watcher.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface UserMapper {
    List<User> getUserList();

    List<User> getUserListByColumn(@Param("column") String column, @Param("value") String value);

    User getUserById(@Param("userId") Integer userId);

    int addUser(User user);

    int updateUser(User user);
}
