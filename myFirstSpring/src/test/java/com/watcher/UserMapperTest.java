package com.watcher;

import com.watcher.entity.User;
import com.watcher.mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import java.util.List;

public class UserMapperTest extends sqlSession {

    @Test
    public void getUserList() {
        SqlSession sqlSession = null;
        sqlSession = sqlSessionFactory.openSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        List<User> list = userMapper.getUserList();
        System.out.println(list);
        sqlSession.close();
    }
}