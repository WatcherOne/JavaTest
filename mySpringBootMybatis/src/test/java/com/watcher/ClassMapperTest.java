package com.watcher;

import com.watcher.entity.StudentClass;
import com.watcher.mapper.ClassMapper;
import com.watcher.vo.ClassStudent;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import java.util.List;

public class ClassMapperTest extends sqlSession {
    @Test
    public void getClassList() {
        SqlSession sqlSession = null;
        sqlSession = sqlSessionFactory.openSession();
        ClassMapper classMapper = sqlSession.getMapper(ClassMapper.class);
        List<StudentClass> list = classMapper.getClassList();
        System.out.println(list);
        sqlSession.close();
    }

    @Test
    public void getClassByIdList() {
        SqlSession sqlSession = null;
        sqlSession = sqlSessionFactory.openSession();
        ClassMapper classMapper = sqlSession.getMapper(ClassMapper.class);
        StudentClass studentClass = classMapper.getClassById(1);
        System.out.println(studentClass);
        sqlSession.close();
    }

    @Test
    public void getClassStudent() {
        SqlSession sqlSession = null;
        sqlSession = sqlSessionFactory.openSession();
        ClassMapper classMapper = sqlSession.getMapper(ClassMapper.class);
        ClassStudent classStudent = classMapper.getClassStudent(10);
        System.out.println(classStudent);
        sqlSession.close();
    }
}
