package com.diancan.dao;

import com.diancan.entity.Good;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface UserDao {
    @Select("select * from goods")
    public List<Good> queryAllGoods();

    @Update("update goods set amount-= #{amount} where id=#{id}")
    public int updateAmount(int amount,int id);

}
