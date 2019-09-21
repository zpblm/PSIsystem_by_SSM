package cn.kgc.service.impl;

import cn.kgc.entity.C;
import cn.kgc.mapper.CMapper;
import cn.kgc.service.CService;
import cn.kgc.service.IOProductService;
import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CServiceImpl implements CService {

	@Autowired
	private CMapper cMapper;


	@Override
	public List<C> selectC() {
		return cMapper.selectC();
	}


	@Override
	public List<String> selectCname() {
		return cMapper.selectCname();
	}

	@Override
	public void addC(C c) {
		cMapper.addC(c);
	}

	@Override
	public String  predeleteC(String cname) {
		return this.cMapper.predeleteC(cname);
	}

	@Override
	public void deleteC(String cname) {
		cMapper.deleteC(cname);
	}

	@Override
	public void updateC(C c) {
		this.cMapper.updateC(c);
	}

	@Override
	public void postupdateC(String cname){
		this.cMapper.postupdateC(cname);
	};
}
