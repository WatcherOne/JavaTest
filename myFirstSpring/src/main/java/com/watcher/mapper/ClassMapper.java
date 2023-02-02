package com.watcher.mapper;

import com.watcher.entity.StudentClass;
import com.watcher.vo.ClassStudentSum;
import com.watcher.vo.ClassStudent;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface ClassMapper {
    List<StudentClass> getClassList();

    StudentClass getClassById(@Param("classId") Integer classId);

    // 获得某个班级所有学生
    ClassStudent getClassStudent(@Param("classId") Integer classId);

    // 获得某个班级所有学生的合计
    ClassStudentSum getClassStudentSum(@Param("classId") Integer classId);
}
