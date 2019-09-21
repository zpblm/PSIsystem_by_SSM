package cn.kgc.mapper;

import java.util.List;

import cn.kgc.entity.User;

public interface UserMapper {
	public User getByUserNameAndPwd(User user);
	
	public List<User> usersList();
	
	public void deleteById(Integer id);
	
	public void updateOne(User user);
	
	public void addOne(User user);
	
	public User selectById(Integer id);

}
