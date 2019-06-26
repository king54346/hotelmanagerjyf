package cn.domain.service.imp;

import cn.domain.dao.hotelclassdao;
import cn.domain.dao.hoteljyfdao;
import cn.domain.domain.hoteljyf;
import cn.domain.service.hoteljyfservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class hoteljyfserviceimp implements hoteljyfservice {
    @Autowired
    private hoteljyfdao hoteljyfdao;
    @Autowired
    private hotelclassdao hotelclassdao;

    @Override
    public List<hoteljyf> findall() {
        List<hoteljyf> findall = hoteljyfdao.findall();
        for (hoteljyf i : findall) {
            i.setHotelclass(hotelclassdao.findbyid(i.getHotelclassid()));
        }
        return findall;
    }

    @Override
    public boolean add(hoteljyf hoteljyf) {

        return hoteljyfdao.add(hoteljyf) == 1;
    }

    @Override
    public boolean delete(int hotelid) {
        return hoteljyfdao.delete(hotelid) == 1;
    }

    @Override
    public hoteljyf findbyid(int hotleid) {
        return hoteljyfdao.findbyid(hotleid);
    }

    @Override
    public boolean update(hoteljyf hoteljyf) {
        return hoteljyfdao.update(hoteljyf) == 1;
    }
}
