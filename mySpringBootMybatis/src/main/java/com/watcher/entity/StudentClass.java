package com.watcher.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StudentClass {
    private Integer id;

    // 年级
    private Integer grade;

    // 班级
    private Integer team;

    private String gradeTeamName;

    public String getGradeTeamName() {
        return this.grade + "级" + this.team + "班";
    }

    private String name;

    private String slogan;
}
