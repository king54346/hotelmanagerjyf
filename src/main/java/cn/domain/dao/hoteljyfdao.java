package cn.domain.dao;
import cn.domain.domain.hoteljyf;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface hoteljyfdao {
    @Select("select * from hoteljyf")
    List<hoteljyf> findall();

    @Insert("insert into hoteljyf(hotelclassid,hotelname,hoteladdress) value(#{hotelclassid},#{hotelname},#{hoteladdress})")
    int add(hoteljyf hoteljyf);

    @Select("select * from hoteljyf where hotelid=#{hotelid}")
    hoteljyf findbyid(int hotleid);

    @Delete("delete from hoteljyf where hotelid=#{hotelid}")
    int delete(int hotelid);

    @Update("update hoteljyf set hotelclassid=#{hotelclassid},hotelname=#{hotelname},hoteladdress=#{hoteladdress} where hotelid=#{hotelid}")
    int update(hoteljyf hoteljyf);
}
