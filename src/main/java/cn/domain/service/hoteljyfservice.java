package cn.domain.service;

import cn.domain.domain.hoteljyf;

import java.util.List;

public interface hoteljyfservice {
    List<hoteljyf> findall();

    boolean add(hoteljyf hoteljyf);

    boolean delete(int hotelid);

    hoteljyf findbyid(int hotleid);

    boolean update(hoteljyf hoteljyf);

}
