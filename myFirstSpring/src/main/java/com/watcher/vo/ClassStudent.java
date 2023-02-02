package com.watcher.vo;

import com.watcher.entity.Student;
import com.watcher.entity.StudentClass;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ClassStudent extends StudentClass {
    private List<Student> studentList;
}
