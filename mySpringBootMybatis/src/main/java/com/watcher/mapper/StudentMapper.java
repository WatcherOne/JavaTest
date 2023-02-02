package com.watcher.mapper;

import com.watcher.entity.Student;
import com.watcher.vo.StudentInfo;

import java.util.List;

public interface StudentMapper {
    List<Student> getStudentList();

    List<StudentInfo> getStudentInfoList();

    List<StudentInfo> getStudentInfoStepList();
}
