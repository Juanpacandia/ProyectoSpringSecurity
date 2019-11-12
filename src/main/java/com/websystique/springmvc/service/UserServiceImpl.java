package com.websystique.springmvc.service;

import com.websystique.springmvc.dao.ForumDao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.websystique.springmvc.dao.UserDao;
import com.websystique.springmvc.model.Forum;
import com.websystique.springmvc.model.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userdao;
    @Autowired
    private ForumDao forodao;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public User findById(int id) {
        return userdao.findById(id);
    }

    @Override
    public User findBySSO(String sso) {
        User user = userdao.findBySSO(sso);
        return user;
    }

    @Override
    public void saveUser(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userdao.save(user);
    }

    /*
	 * Since the method is running with Transaction, No need to call hibernate update explicitly.
	 * Just fetch the entity from db and update it with proper values within transaction.
	 * It will be updated in db once transaction ends. 
     */
    @Override
    public void updateUser(User user) {
        User entity = userdao.findById(user.getId());
        if (entity != null) {
            entity.setSsoId(user.getSsoId());
            if (!user.getPassword().equals(entity.getPassword())) {
                entity.setPassword(passwordEncoder.encode(user.getPassword()));
            }
            entity.setFirstName(user.getFirstName());
            entity.setLastName(user.getLastName());
            entity.setEmail(user.getEmail());
            entity.setUserProfiles(user.getUserProfiles());
        }
    }

    @Override
    public void deleteUserBySSO(String sso) {
        userdao.deleteBySSO(sso);
    }

    @Override
    public List<User> findAllUsers() {
        return userdao.findAllUsers();
    }

    @Override
    public boolean isUserSSOUnique(Integer id, String sso) {
        User user = findBySSO(sso);
        return (user == null || ((id != null) && (user.getId() == id)));
    }

    @Override
    public List<Forum> findAllForums() {
        return forodao.findAllForums();
    }

    @Override
    public Forum findByIdForum(int id) {
        return forodao.findByIdForum(id);
    }
    
    @Override
    public void saveForum(Forum forum) {
        forodao.saveForum(forum);
    }

    @Override
    public void updateForum(Forum forum) {
        Forum entity = forodao.findByIdForum(forum.getId());
    }

    @Override
    public void deleteForum(int id) {
        forodao.deleteForum(id);
    }
}
