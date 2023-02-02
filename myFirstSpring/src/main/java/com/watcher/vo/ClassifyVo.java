package com.watcher.vo;

import com.watcher.entity.Classify;
import com.watcher.entity.IconSet;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
public class ClassifyVo extends Classify {

    private List<IconSet> iconList;
}
