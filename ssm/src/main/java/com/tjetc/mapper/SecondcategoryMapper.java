package com.tjetc.mapper;

import com.tjetc.domain.Secondcategory;
import com.tjetc.domain.SecondcategoryExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SecondcategoryMapper {
    int countByExample(SecondcategoryExample example);

    int deleteByExample(SecondcategoryExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Secondcategory record);

    int insertSelective(Secondcategory record);

    List<Secondcategory> selectByExample(SecondcategoryExample example);

    Secondcategory selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Secondcategory record, @Param("example") SecondcategoryExample example);

    int updateByExample(@Param("record") Secondcategory record, @Param("example") SecondcategoryExample example);

    int updateByPrimaryKeySelective(Secondcategory record);

    int updateByPrimaryKey(Secondcategory record);
}