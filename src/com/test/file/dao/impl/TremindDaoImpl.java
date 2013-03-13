package com.test.file.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.test.file.dao.TremindDao;
import com.test.file.model.Client;
import com.test.file.model.ClientTremind;

public class TremindDaoImpl extends HibernateDaoSupport implements TremindDao {

	public void addTrimind(ClientTremind clientTremind) {

		this.getHibernateTemplate().save(clientTremind);
	}

	public List<ClientTremind> queryTremind(Client client) {
		
		List tremindList=this.getHibernateTemplate().find("from ClientTremind where client.userid = " +client.getUserid() );
		
		return tremindList;
		
	}

}
