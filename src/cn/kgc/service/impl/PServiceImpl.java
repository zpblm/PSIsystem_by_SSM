package cn.kgc.service.impl;

import cn.kgc.entity.P;
import cn.kgc.mapper.PMapper;
import cn.kgc.service.PService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PServiceImpl implements PService {

	@Autowired
	private PMapper pMapper;


	@Override
	public List<P> selectP() {
		return this.pMapper.selectP();
	}

	@Override
	public List<String> selectPclass() {
		return this.pMapper.selectPclass();
	}


	@Override
	public void updateWnu(int pid,int wnu) {
		this.pMapper.updateWnu(pid,wnu);
	}

	@Override
	public void updateP(P p){
	this.pMapper.updateP(p);
	}
	@Override
	public void addP(P p){
		this.pMapper.addP(p);
	}
	@Override
	public void deleteP(String pid){
		this.pMapper.deleteP(pid);
	}

}
