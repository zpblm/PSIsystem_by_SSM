package cn.kgc.controller;

import cn.kgc.entity.OutProduct;
import cn.kgc.entity.P;
import cn.kgc.service.CService;
import cn.kgc.service.PService;
import cn.kgc.service.IOProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.sql.Date;
import java.util.List;

@Controller
public class OutProductController {
	private static final ModelAndView modelAndView = new ModelAndView("outBoud");
	
	@Autowired
	private IOProductService IOProductService;

	@Autowired
	private CService cService;
	@Autowired
	private PService pService;

	@RequestMapping(value="/OutProduct/list",method=RequestMethod.GET)
	public ModelAndView list() {
		//查询数据
		List<OutProduct> OutProducts = IOProductService.selectOutProducts();
		List<String> Cnames = cService.selectCname();
		List<P> Ps = pService.selectP();
		modelAndView.addObject("OutProducts",OutProducts);
		modelAndView.addObject("Cnames",Cnames);
		modelAndView.addObject("Ps",Ps);
		return modelAndView;
	}


	@RequestMapping("/OutProduct/add")
	public ModelAndView add(OutProduct outProduct) {
		Date currentDate = new Date(System.currentTimeMillis());
		outProduct.setOdate(currentDate);
		IOProductService.preaddOutProduct(outProduct.getPname(),outProduct.getOnu());
		IOProductService.addOutProduct(outProduct);
		return list();
	}
	@RequestMapping("/OutProduct/delete/{opid}")
	public ModelAndView delete(@PathVariable int opid) {
		IOProductService.deleteOutProduct(opid);
		return list();
	}

}
