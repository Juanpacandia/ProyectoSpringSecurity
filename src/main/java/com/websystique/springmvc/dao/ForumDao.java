package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Forum;
import java.util.List;
import org.springframework.stereotype.Repository;

@Repository("forumDao")
public interface ForumDao {
 
    public List<Forum> findAllForums();

}
