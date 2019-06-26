package cn.domain.domain;

import java.io.Serializable;
import java.util.List;

public class hotelclass implements Serializable {
    private int hotelclassid;
    private String hotelclassname;
    private List<hoteljyf> hoteljyfs;

    public int getHotelclassid() {
        return hotelclassid;
    }

    public void setHotelclassid(int hotelclassid) {
        this.hotelclassid = hotelclassid;
    }

    public String getHotelclassname() {
        return hotelclassname;
    }

    public void setHotelclassname(String hotelclassname) {
        this.hotelclassname = hotelclassname;
    }

    public List<hoteljyf> getHoteljyfs() {
        return hoteljyfs;
    }

    public void setHoteljyfs(List<hoteljyf> hoteljyfs) {
        this.hoteljyfs = hoteljyfs;
    }
}
