package cn.kgc.service.impl;

import cn.kgc.mapper.PMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.kgc.entity.InProduct;
import cn.kgc.mapper.InProductMapper;
import cn.kgc.entity.OutProduct;
import cn.kgc.mapper.OutProductMapper;
import cn.kgc.service.IOProductService;

import java.util.List;

@Service
public class IOProductServiceImpl implements IOProductService {
	
	@Autowired
	private InProductMapper inProductMapper;
    @Autowired
    private PMapper pMapper;
	@Autowired
	private OutProductMapper outProductMapper;

	@Override
	public List<InProduct> selectInProducts() {
		return this.inProductMapper.select();
	}

	@Override
	public List<OutProduct> selectOutProducts() {
		return this.outProductMapper.select();
	}

	@Override
	public void addInProduct(InProduct inProduct) {
		this.inProductMapper.add(inProduct);
	}

	@Override
	public void addOutProduct(OutProduct outProduct) {
		this.outProductMapper.add(outProduct);
	}

	@Override
	public void preaddInProduct(String pname, int inu) {
	    this.pMapper.preInProduct(pname,inu);
	}
	@Override
	public void preaddOutProduct(String pname, int onu) {
        this.pMapper.preOutProduct(pname,onu);
	}

	@Override
	public void deleteInProduct(int id) {
		this.inProductMapper.delete(id);
	}
	@Override
	public void deleteOutProduct(int id) {
		this.outProductMapper.delete(id);
	}
}
