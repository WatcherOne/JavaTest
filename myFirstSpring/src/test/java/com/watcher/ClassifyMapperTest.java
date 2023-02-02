package com.watcher;

import com.watcher.mapper.ClassifyMapper;
import com.watcher.vo.ClassifyVo;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import java.util.List;
import java.util.Map;

public class ClassifyMapperTest extends sqlSession {
    @Test
    public void getClassifyList() {
        SqlSession sqlSession = null;
        sqlSession = sqlSessionFactory.openSession();
        ClassifyMapper classifyMapper = sqlSession.getMapper(ClassifyMapper.class);
        List<ClassifyVo> list = classifyMapper.getClassifyList();
        System.out.println(list);
        sqlSession.close();
    }

    @Test
    public void getClassifyById() {
        SqlSession sqlSession = null;
        sqlSession = sqlSessionFactory.openSession();
        ClassifyMapper classifyMapper = sqlSession.getMapper(ClassifyMapper.class);
        ClassifyVo classifyVo = classifyMapper.getClassifyById(3);
        System.out.println(classifyVo);
        sqlSession.close();
    }

    @Test
    public void getClassifyMap() {
        SqlSession sqlSession = null;
        sqlSession = sqlSessionFactory.openSession();
        ClassifyMapper classifyMapper = sqlSession.getMapper(ClassifyMapper.class);
        Map<Integer, ClassifyVo> mapObj = classifyMapper.getClassifyMap();
        System.out.println(mapObj);
        sqlSession.close();
    }
}
