package cn.kgc.service;


import cn.kgc.entity.C;

import java.util.List;

public interface CService {
	public List<C> selectC();
	public List<String> selectCname();
	public void addC(C c);
	public String predeleteC(String cname);
	public void deleteC(String cname);
	public void updateC(C c);
	public void postupdateC(String cname);

}
