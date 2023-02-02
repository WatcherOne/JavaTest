package com.watcher.service;

import com.watcher.entity.User;

import java.util.List;

public interface UserService {
    List<User> getUserList();

    List<User> getUserListByColumn(String column, String value);

    int addUser(User user);

    int updateUser(User user);
}
