package com.test.file.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.test.file.dao.ClientDao;
import com.test.file.model.Client;

public class ClientDaoImpl extends HibernateDaoSupport implements ClientDao {

	public void addClient(Client client) {
		
		this.getHibernateTemplate().save(client);
	}

	public boolean queryClientByNamePass(String username, String password) {
		
		List<Client> clientList = this.getHibernateTemplate().find("from Client where password='"+password+"' and username='"+username+"'");
		
		if(clientList.size() == 1) {
			
			return true;
			
		}else {
			
			return false;
		}
		
	}

	public Client queryClientByName(String username) {

		List clientList = this.getHibernateTemplate().find("from Client where username='"+username+"'");
		Client client = null;
		
		if(clientList.size() == 1){
		 client = (Client) clientList.get(0);
		}
		return client;
	}

	public void modifyClient(Client client) {
		
		this.getHibernateTemplate().update(client);
	}

	public List<Client> queryClient() {
		
		List<Client> clientList = this.getHibernateTemplate().find("from Client");
		
		return clientList;
	}

	public Client queryClientById(int userid) {
		List clientList = this.getHibernateTemplate().find("from Client where userid='"+userid+"'");
		Client client = null;
		
		if(clientList.size() == 1){
		 client = (Client) clientList.get(0);
		}
		return client;
	}
	
	/*
	public List queryUser() {
			
			List userList=this.getHibernateTemplate().find("from User");
			
			return userList;
		}
	
		public User queryUserByName(String username) {
			
			List userList=this.getHibernateTemplate().find("from User where username='"+username+"'");
			User u=null;
			if(userList.size()==1){
			 u=(User) userList.get(0);
			}
			return u;
			
		}
	
		public boolean queryUserByNameAndPass(String username, String password) {
			
			List userList=this.getHibernateTemplate().find("from User where password='"+password+"' and username='"+username+"'");
			
			if(userList.size() == 1) {
				return true;
			}else {
				return false;
			}
		}*/
}
