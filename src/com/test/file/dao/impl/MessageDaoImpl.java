package com.test.file.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.test.file.dao.MessageDao;
import com.test.file.model.Client;
import com.test.file.model.ClientMessage;

public class MessageDaoImpl extends HibernateDaoSupport implements MessageDao {

	public void addMessage(ClientMessage message) {
		
		this.getHibernateTemplate().save(message);
	}

	public List<ClientMessage> queryMsgBySender(Client client) {

		List<ClientMessage> clientMsgList = this.getHibernateTemplate().find("from ClientMessage where sender='" +client.getUsername() + "'");
		
		return clientMsgList;
	}

	public void modifyMessage(ClientMessage message) {
		
		this.getHibernateTemplate().update(message);
	}

	public List<ClientMessage> queryMsgByUid(Client client) {

		List<ClientMessage> clientMsgList = this.getHibernateTemplate().find("from ClientMessage where client.userid=" +client.getUserid());
		
		return clientMsgList;
	}

}
