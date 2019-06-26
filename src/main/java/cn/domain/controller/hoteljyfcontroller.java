package cn.domain.controller;

import cn.domain.domain.hotelclass;
import cn.domain.domain.hoteljyf;
import cn.domain.service.hotelclassservice;
import cn.domain.service.hoteljyfservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@Controller
@RequestMapping("/hoteljyf")
public class hoteljyfcontroller  {
    @Autowired
    private hoteljyfservice hoteljyfservice;
    @Autowired
    private hotelclassservice hotelclassservice;
    @RequestMapping("/addto")
    public String addto(){
        return "addHotel";
    }
    @RequestMapping("/add")
    public String add(Model model, hoteljyf hoteljyf){
        boolean flag=hoteljyfservice.add(hoteljyf);
        return "redirect:/hoteljyf/findall";
    }
    @RequestMapping("/findall")
    public String findall(Model model){
        List<hoteljyf> hoteljyfs = hoteljyfservice.findall();
        model.addAttribute("hoteljyfs",hoteljyfs);
        return "hotelList";
    }
    @RequestMapping("/delete/{hotelid}")
    public String delete(Model model, @PathVariable("hotelid")int hotelid){
        boolean flag=hoteljyfservice.delete(hotelid);
        return "redirect:/hoteljyf/findall";
    }
    @RequestMapping("/updateto/{hotelid}")
    public String updateto(@PathVariable("hotelid")int hotleid, Model model){
        hoteljyf findbyid = hoteljyfservice.findbyid(hotleid);
        List<hotelclass> findall = hotelclassservice.findall();
        model.addAttribute("findbyid",findbyid);
        model.addAttribute("findall",findall);
        return "updateHotel";
    }
    @RequestMapping("/update")
    public String update(hoteljyf hoteljyf,Model model){
        hoteljyfservice.update(hoteljyf);
        return "redirect:/hoteljyf/findall";
    }
}













