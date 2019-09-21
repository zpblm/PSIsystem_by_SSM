package cn.kgc.controller;

import cn.kgc.service.PService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class WarnController {
    private ModelAndView modelAndView = new ModelAndView("warning");
    @Autowired
    private PService pService;


    @RequestMapping("/Warn/list")
    public ModelAndView list(){
        modelAndView.addObject("Warns",this.pService.selectP());
        return modelAndView;
    }

    @RequestMapping("/Warn/update")
    public ModelAndView update(@RequestParam("pid")int pid, @RequestParam("wnu")int wnu){
        this.pService.updateWnu(pid,wnu);
        return list();
    }



}
