package com.watcher;

import com.watcher.entity.Student;
import com.watcher.mapper.StudentMapper;
import com.watcher.vo.StudentInfo;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import java.util.List;

public class StudentMapperTest extends sqlSession {

    @Test
    public void getStudentList() {
        SqlSession sqlSession = null;
        sqlSession = sqlSessionFactory.openSession();
        StudentMapper studentMapper = sqlSession.getMapper(StudentMapper.class);
        List<Student> list = studentMapper.getStudentList();
        System.out.println(list);
        sqlSession.close();
    }

    @Test
    public void getStudentInfoList() {
        SqlSession sqlSession = null;
        sqlSession = sqlSessionFactory.openSession();
        StudentMapper studentMapper = sqlSession.getMapper(StudentMapper.class);
        List<StudentInfo> list = studentMapper.getStudentInfoList();
        System.out.println(list);
        sqlSession.close();
    }

    @Test
    public void getStudentInfoStepList() {
        SqlSession sqlSession = null;
        sqlSession = sqlSessionFactory.openSession();
        StudentMapper studentMapper = sqlSession.getMapper(StudentMapper.class);
        List<StudentInfo> list = studentMapper.getStudentInfoStepList();
        System.out.println(list);
        sqlSession.close();
    }
}
