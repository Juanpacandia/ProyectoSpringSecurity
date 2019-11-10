/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Forum;
import com.websystique.springmvc.model.User;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;

/**
 *
 * @author jpcan
 */
public class ForumDaoImpl extends AbstractDao<User, Forum> implements ForumDao{
    
        @SuppressWarnings("unchecked")
        @Override
	public List<Forum> findAllForums() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("id"));
		List<Forum> forums = (List<Forum>) criteria.list();
		return forums;
	}
}
