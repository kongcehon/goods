package com.itheima.core.dao;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.itheima.core.po.User;
/**
 * 用户DAO层接口
 */
public interface UserDao {
	/**
	 * 通过账号和密码查询用户
	 */
	
	public User findUser(@Param("username") String username,
			                @Param("password") String password);
	
	public List<User> getDaoUserList();
	 //删除用户信息
		public int deluser(String username);
		
		//新建用户
		public int createUser(User user);
		
		public User getUserById(Integer id);
		public int updateUser(User user);
}
