package cn.kgc.service;

import java.util.List;

import cn.kgc.entity.User;

public interface UserService {

	List<User> listAll();
	void add(User user);
	User selectById(int uid);
	void delete(int id);
	void update(User user);
	
}
