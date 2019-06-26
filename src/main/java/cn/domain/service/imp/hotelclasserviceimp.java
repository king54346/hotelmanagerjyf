package cn.domain.service.imp;

import cn.domain.dao.hotelclassdao;
import cn.domain.domain.hotelclass;
import cn.domain.domain.hoteljyf;
import cn.domain.service.hotelclassservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class hotelclasserviceimp implements hotelclassservice {
    @Autowired
    private hotelclassdao hotelclassdao;

    @Override
    public List<hotelclass> findall() {

        return hotelclassdao.findall();
    }

}
