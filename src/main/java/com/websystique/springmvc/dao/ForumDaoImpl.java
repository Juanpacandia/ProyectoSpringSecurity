package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Forum;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository("forumDao")
public class ForumDaoImpl extends AbstractDao<Integer , Forum> implements ForumDao{
    
    @SuppressWarnings("unchecked")
    @Override
    public List<Forum> findAllForums() {
        Criteria criteria = createEntityCriteria().addOrder(Order.asc("comentary"));
        List<Forum> forums = (List<Forum>) criteria.list();
        return forums;
    } 

    @Override
    public void saveForum(Forum forum) {
        persist(forum);
    }

    @Override
    public Forum findByIdForum(int id) {
        Forum forum = getByKey(id);
		return forum;
    }

    @Override
    public void updateForum() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void deleteForum(int id) {
        Criteria crit = createEntityCriteria();
	crit.add(Restrictions.eq("Id", id));
	Forum forum = (Forum)crit.uniqueResult();
	delete(forum);
    }


}