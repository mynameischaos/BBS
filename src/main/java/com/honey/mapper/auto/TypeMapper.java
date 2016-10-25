package com.honey.mapper.auto;

import com.honey.entity.auto.Type;
import org.springframework.stereotype.Repository;

@Repository
public interface TypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Type record);

    int insertSelective(Type record);

    Type selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Type record);

    int updateByPrimaryKey(Type record);
}