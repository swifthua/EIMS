package com.springboot.eims.dao;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;


public interface TopDao<T> {

    
   public int deleteByPrimaryKey(String adminId);

   public int insert(T record);

   public  int insertSelective(T record);

   public T selectByPrimaryKey(String Id);

   public int updateByPrimaryKeySelective(T record);

   public int updateByPrimaryKey(T record);
   
   public List<T> findAll();
}