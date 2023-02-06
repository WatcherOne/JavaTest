package com.watcher;

import com.watcher.entity.User;
import com.watcher.mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import java.util.List;

public class SessionMapperTest extends sqlSession {

    // 属于一级缓存
    @Test
    public void getUserListSqlSesion() {
        SqlSession sqlSession = null;
        sqlSession = sqlSessionFactory.openSession();
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        List<User> list = userMapper.getUserList();
        // 手动清除缓存
        // sqlSession.clearCache();
        List<User> list1 = userMapper.getUserList();
        System.out.println(list);
        System.out.println(list1);
        sqlSession.close();
    }

    // 属于二级缓存
    @Test
    public void getUserListSqlSesionDiff() {
        SqlSession sqlSession1 = null;
        SqlSession sqlSession2 = null;
        sqlSession1 = sqlSessionFactory.openSession();
        sqlSession2 = sqlSessionFactory.openSession();
        UserMapper userMapper1 = sqlSession1.getMapper(UserMapper.class);
        List<User> list1 = userMapper1.getUserList();
        System.out.println(list1);
        sqlSession1.close();
        UserMapper userMapper2 = sqlSession2.getMapper(UserMapper.class);
        List<User> list2 = userMapper2.getUserList();
        System.out.println(list2);
        sqlSession2.close();
    }
}
