package com.test.file.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.test.file.dao.FileSpaceDao;
import com.test.file.model.Client;
import com.test.file.model.ClientFileSpace;

public class FileSpaceDaoImpl extends HibernateDaoSupport implements
		FileSpaceDao {

	public ClientFileSpace querySpaceByUid(Client client) {
		
		List<ClientFileSpace> fileSpaceList = this.getHibernateTemplate().find("from ClientFileSpace where client.userid="+client.getUserid());
		ClientFileSpace cfs = null;
		
		if(fileSpaceList.size() == 1){
			cfs = (ClientFileSpace) fileSpaceList.get(0);
		}
		return cfs;
	}

	public void addFileSpace(ClientFileSpace fileSpace) {

		this.getHibernateTemplate().save(fileSpace);
	}

	public void modifyFileSpace(ClientFileSpace fileSpace) {

		this.getHibernateTemplate().update(fileSpace);
	}

}
