package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Forum;
import com.websystique.springmvc.model.User;
import java.util.List;
import org.springframework.stereotype.Repository;

public interface ForumDao {
 
    public List<Forum> findAllForums();

    void saveForum(Forum forum);

    public Forum findByIdForum(int id);

    public void updateForum();

    void deleteForum(int id);

}
