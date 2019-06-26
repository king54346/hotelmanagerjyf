package cn.domain.domain;

import java.io.Serializable;

public class hoteljyf implements Serializable {
    private int hotelclassid;
    private String hotelname;
    private int hotelid;
    private String hoteladdress;
    private hotelclass hotelclass;

    public hotelclass getHotelclass() {
        return hotelclass;
    }

    public void setHotelclass(cn.domain.domain.hotelclass hotelclass) {
        this.hotelclass = hotelclass;
    }

    public int getHotelclassid() {
        return hotelclassid;
    }

    public void setHotelclassid(int hotelclassid) {
        this.hotelclassid = hotelclassid;
    }

    public String getHotelname() {
        return hotelname;
    }

    public void setHotelname(String hotelname) {
        this.hotelname = hotelname;
    }

    public int getHotelid() {
        return hotelid;
    }

    public void setHotelid(int hotelid) {
        this.hotelid = hotelid;
    }

    public String getHoteladdress() {
        return hoteladdress;
    }

    public void setHoteladdress(String hoteladdress) {
        this.hoteladdress = hoteladdress;
    }
}
