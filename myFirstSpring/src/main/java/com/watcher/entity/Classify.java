package com.watcher.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Classify implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private String classifyName;
}
