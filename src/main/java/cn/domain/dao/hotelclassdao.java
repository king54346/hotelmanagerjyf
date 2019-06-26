package cn.domain.dao;

import cn.domain.domain.hotelclass;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface hotelclassdao {
    @Select("select * from hotelclass where hotelclassid=#{hotelclassid}")
    hotelclass findbyid(int hotelclassid);
    @Select("select * from hotelclass")
    List<hotelclass> findall();
}
