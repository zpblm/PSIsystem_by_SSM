package cn.kgc.controller;

import cn.kgc.entity.C;
import cn.kgc.entity.P;
import cn.kgc.service.CService;
import cn.kgc.service.PService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.kgc.entity.InProduct;
import cn.kgc.service.IOProductService;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.sql.Date;

@Controller
public class InProductController {
	private static final ModelAndView modelAndView = new ModelAndView("inbound");
	
	@Autowired
	private IOProductService IOProductService;

	@Autowired
	private CService cService;
	@Autowired
	private PService pService;

	@RequestMapping(value="/InProduct/list",method=RequestMethod.GET)
	public ModelAndView list() {
		//查询数据,并且初始化页面
		modelAndView.addObject("InProducts",IOProductService.selectInProducts());
		modelAndView.addObject("Cnames",cService.selectCname());
		modelAndView.addObject("Ps",pService.selectP());
		return modelAndView;
	}

	
	@RequestMapping("/InProduct/add")
	public ModelAndView add(InProduct inProduct) {
		Date currentDate = new Date(System.currentTimeMillis());
		inProduct.setIdate(currentDate);
		IOProductService.preaddInProduct(inProduct.getPname(),inProduct.getInu());
		IOProductService.addInProduct(inProduct);
		return list();
	}
	@RequestMapping("/InProduct/delete/{ipid}")
	public ModelAndView delete(@PathVariable int ipid) {
		IOProductService.deleteInProduct(ipid);
		return list();
	}

}
