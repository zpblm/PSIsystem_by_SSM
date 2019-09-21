package cn.kgc.controller;

import cn.kgc.entity.C;
import cn.kgc.service.CService;
import cn.kgc.service.PService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ClassController {
    private ModelAndView modelAndView = new ModelAndView("type");
    @Autowired
    private CService cService;

    @Autowired
    private PService pService;
    @RequestMapping("/Class/list")
    public ModelAndView list(){
        modelAndView.addObject("Cs",this.cService.selectC());
        modelAndView.addObject("Pcs",this.pService.selectPclass());
        return modelAndView;
    }
    @RequestMapping("/Class/addC")
    public ModelAndView addC(C c){
        modelAndView.addObject("tag","3");
        this.cService.addC(c);
        return list();
    }
    @RequestMapping("/Class/deleteC/{cname}")
    public ModelAndView deleteC(@PathVariable String cname){
        if (this.cService.predeleteC(cname)!=null){
        }else
        {
            this.cService.deleteC(cname);
        }
        return list();
    }
    @RequestMapping("/Class/updateC")
    public ModelAndView update(C c){
        this.cService.updateC(c);
        this.cService.postupdateC(c.getCname());
        return list();
    }
}
