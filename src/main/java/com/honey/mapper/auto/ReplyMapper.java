package com.honey.mapper.auto;

import com.honey.entity.auto.Reply;
import org.springframework.stereotype.Repository;

@Repository
public interface ReplyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Reply record);

    int insertSelective(Reply record);

    Reply selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Reply record);

    int updateByPrimaryKey(Reply record);
}