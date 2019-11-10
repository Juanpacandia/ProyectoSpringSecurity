package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Forum;
import java.util.List;

public interface ForumDao {
 
    public List<Forum> findAllForums();
}
