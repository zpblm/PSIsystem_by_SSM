package cn.kgc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.kgc.entity.User;
import cn.kgc.mapper.UserMapper;
import cn.kgc.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public List<User> listAll() {
		List<User> users = userMapper.usersList();
		return users;
	}

	@Override
	public void delete(int id) {
		this.userMapper.deleteById(id);
		
	}

	@Override
	public void update(User user) {
		this.userMapper.updateOne(user);
		
	}

	@Override
	public void add(User user) {
		// TODO Auto-generated method stub
		this.userMapper.addOne(user);
	}

	@Override
	public User selectById(int uid) {
		User user = userMapper.selectById(uid);
		return user;
	}
	
	
}
