package com.itheima.core.service;
import java.util.List;


import com.itheima.core.po.User;
/**
 * 用户Service层接口
 */
public interface UserService {
	// 通过账号和密码查询用户
	public User findUser(String username,String password);
	public List<User> getUserList();
	public int delUser(String username);
	public int createUser(User user);
	public User getUserById(Integer id);
	public int updateUser(User user);
}
