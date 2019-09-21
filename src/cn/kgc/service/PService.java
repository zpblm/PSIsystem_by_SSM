package cn.kgc.service;


import cn.kgc.entity.P;

import java.util.List;

public interface PService {
	public List<P> selectP();
	public List<String> selectPclass();


	public void updateWnu(int pid,int wnu);
	public void updateP(P p);
	public void addP(P p);
	public void deleteP(String pid);



}
