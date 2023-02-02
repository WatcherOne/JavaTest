package com.watcher.vo;

import com.watcher.entity.StudentClass;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.HashMap;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ClassStudentSum extends StudentClass {

    // 所有学生
    private Long stuSum;

    private HashMap creditSum;
//    private Long creditSum;
}
