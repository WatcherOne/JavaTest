package com.watcher;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import java.io.IOException;
import java.io.InputStream;
public class sqlSession {

    public SqlSessionFactory sqlSessionFactory;

    // 表示运行测试代码前执行,给sqlSessionFactory赋值
    @Before
    public void InitialContext() throws IOException {
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        InputStream inputStream = Resources.getResourceAsStream("mybatis-test-config.xml");
        SqlSessionFactory sqlSessionFactory = builder.build(inputStream);
        this.sqlSessionFactory = sqlSessionFactory;
    }
}
