package com.watcher.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 下面注解是 lombok 提供的简化功能
 * @Data - 生成 getter,setter,toString等函数
 * @NoArgsConstructor  - 生成无参构造函数
 * @AllArgsConstructor - 生成有参构造函数
 *
 * @Accessors(chain = true)  // 表示实体类可以链式调用 .set<> 方法
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User implements seriableize {
    private Integer id;

    private String userName;

    private Integer age;

    private Integer sex;

    private String sexName;

    private String idCard;

    private String password;
}
