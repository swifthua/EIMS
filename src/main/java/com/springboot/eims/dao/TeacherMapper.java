package com.springboot.eims.dao;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.eims.entity.Result;
import com.springboot.eims.entity.Teacher;

import java.util.HashMap;
import java.util.List;


@Mapper
public interface TeacherMapper {
    int deleteByPrimaryKey(Integer tid);

    int insert(Teacher record);

    
    int insertSelective(Teacher record);

    Teacher selectByPrimaryKey(Integer tid);

    int updateByPrimaryKeySelective(Teacher record);

    int updateByPrimaryKey(Teacher record);

    //多条件模糊查询

    List<Teacher> mulitConditionFindLike(Teacher record);

    //统计种类
    List<Result>  countNationCategory ();
    List<Result>  countSexCategory ();
    List<Result>  countAddressCategory ( );

}