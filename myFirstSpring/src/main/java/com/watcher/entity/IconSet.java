package com.watcher.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class IconSet {
    private Integer id;

    private Integer classifyId;

    private String iconName;

    private String iconCode;
}
