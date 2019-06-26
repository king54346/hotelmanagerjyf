package cn.domain.controller;

import cn.domain.domain.hoteljyf;
import cn.domain.service.hoteljyfservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/hotelclass")
public class hotelclasscontroller {
    @Autowired
    private hoteljyfservice hoteljyfservice;

    @RequestMapping("/findall")
    public String findall(Model model) {
        List<hoteljyf> hoteljyfs = hoteljyfservice.findall();
        model.addAttribute("hoteljyfs", hoteljyfs);
        return "classList";
    }
}
