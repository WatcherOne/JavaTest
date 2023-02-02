package com.watcher.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.watcher.entity.User;
import com.watcher.service.UserService;
import java.util.List;

/**
 *  一个案例
 **/

@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/user/list")
    public List<User> getUserList() {
        return userService.getUserList();
    }

    @GetMapping("/user/query")
    // @RequestParam("column") 感觉没什么用
    // 应该是后端用于接受的命名参数
    public List<User> getUserListByColumn(String column, String value) {
        return userService.getUserListByColumn(column, value);
    }

    @PostMapping("/user/add")
    public int addUser(@RequestBody User user) {
        return userService.addUser(user);
    }

    @PutMapping("/user/update")
    public int updateUser(@RequestBody User user) {
        return userService.updateUser(user);
    }
}
