package com.websystique.springmvc.dao;

import static com.websystique.springmvc.dao.UserDaoImpl.logger;
import com.websystique.springmvc.model.Forum;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

@Repository("forumDao")
public class ForumDaoImpl extends AbstractDao<Integer , Forum> implements ForumDao{
    
        @SuppressWarnings("unchecked")
        @Override
	public List<Forum> findAllForums() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("id"));
		List<Forum> forums = (List<Forum>) criteria.list();
		return forums;
            } 
}