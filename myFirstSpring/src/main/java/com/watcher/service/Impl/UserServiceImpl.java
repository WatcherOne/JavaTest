package com.watcher.service.Impl;

import com.watcher.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.watcher.entity.User;
import com.watcher.mapper.UserNotesMapper;
import com.watcher.service.UserService;
import java.util.List;

// @Service注解才会被 spring 生成 bean注入到 controller 里面去
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public List<User> getUserList() {
        return userMapper.getUserList();
    }

    public List<User> getUserListByColumn(String column, String value) {
        return userMapper.getUserListByColumn(column, value);
    }

    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }
}
