package com.watcher.vo;

import com.watcher.entity.StudentClass;
import com.watcher.entity.Student;
import com.watcher.entity.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StudentInfo extends Student {

    private User userInfo;

    private StudentClass classInfo;
}
