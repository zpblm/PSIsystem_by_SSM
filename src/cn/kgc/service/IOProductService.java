package cn.kgc.service;

import cn.kgc.entity.InProduct;
import cn.kgc.entity.OutProduct;

import java.util.List;

public interface IOProductService {

	public List<InProduct> selectInProducts();
	public List<OutProduct> selectOutProducts();

	public void addInProduct(InProduct inProduct);
	public void addOutProduct(OutProduct outProduct);
	public void preaddInProduct(String pname,int inu);
	public void preaddOutProduct(String pname,int onu);
	public void deleteInProduct(int id);

    public void deleteOutProduct(int opid);
}
