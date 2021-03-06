package com.websystique.springmvc.service;


import com.websystique.springmvc.model.Forum;
import java.util.List;

import com.websystique.springmvc.model.User;


public interface UserService {
	
	User findById(int id);
	
	User findBySSO(String sso);
	
	void saveUser(User user);
	
	void updateUser(User user);
	
	void deleteUserBySSO(String sso);

	List<User> findAllUsers(); 
	
	boolean isUserSSOUnique(Integer id, String sso);
        
        List<Forum> findAllForums(); 
        
        Forum findByIdForum(int id);
        
        void saveForum(Forum forum);
	
	void updateForum(Forum forum);
	
	void deleteForum(int id);

}