package cn.kgc.controller;

import cn.kgc.entity.P;
import cn.kgc.service.CService;
import cn.kgc.service.PService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductContrller {
    private ModelAndView modelAndView = new ModelAndView("inventory");

    @Autowired
    private PService pService;
    @Autowired
    private CService cService;
    @RequestMapping("/Product/list")
    public ModelAndView list(){
        List<P> Ps = this.pService.selectP();
        List<String> warnPs = new ArrayList<>();
        for (P ptmp:Ps) {
            if (ptmp.getPnu()<ptmp.getWnu()){
                warnPs.add(ptmp.getPname());
            }
        }
        modelAndView.addObject("Cnames",this.cService.selectCname());
        modelAndView.addObject("Ps",Ps);
        modelAndView.addObject("warnPs",warnPs);
        return modelAndView;
    }
    @RequestMapping("/Product/updateP")
    public ModelAndView updateP(P p){
        this.pService.updateP(p);
        return list();
    }
    @RequestMapping("/Product/addP")
    public ModelAndView addP(P p){
        this.pService.addP(p);
        return list();
    }
    @RequestMapping("/Product/deleteP/{pid}")
    public ModelAndView deleteP(@PathVariable String pid){
        this.pService.deleteP(pid);
        return list();
    }
}
