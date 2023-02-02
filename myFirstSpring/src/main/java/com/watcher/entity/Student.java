package com.watcher.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Student {
    private Integer id;

    private Integer userId;

    private Integer classId;

    // 学生工号
    private String stuNum;

    // 学生学分
    private BigDecimal stuCredit;

    private String remark;
}
