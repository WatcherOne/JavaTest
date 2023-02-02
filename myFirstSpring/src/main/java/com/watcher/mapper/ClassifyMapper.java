package com.watcher.mapper;

import com.watcher.vo.ClassifyVo;
import org.apache.ibatis.annotations.MapKey;
import org.apache.ibatis.annotations.Param;
import java.util.List;
import java.util.Map;

public interface ClassifyMapper {

    List<ClassifyVo> getClassifyList();

    @MapKey("id")
    Map<Integer, ClassifyVo> getClassifyMap();

    ClassifyVo getClassifyById(@Param("classifyId") Integer id);
}
