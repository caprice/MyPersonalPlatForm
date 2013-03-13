package com.test.file.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.test.file.dao.ClientFileDao;
import com.test.file.model.Client;
import com.test.file.model.ClientFile;

public class ClientFileDaoImpl extends HibernateDaoSupport implements
		ClientFileDao {

	public void addFile(ClientFile file) {
		
		this.getHibernateTemplate().save(file);
	}

	public List<ClientFile> queryAllFile(Client client) {

		List<ClientFile> fileList = this.getHibernateTemplate().find("from ClientFile where client.userid=" +client.getUserid() );
		
		return fileList;
	}

	public ClientFile queryFileById(int fileid) {
		
		List fileList = this.getHibernateTemplate().find("from ClientFile where fileid="+fileid);
		ClientFile file = null;
		
		if(fileList.size() == 1){
			file = (ClientFile) fileList.get(0);
		}
		return file;
	}

	public void modifyFile(ClientFile file) {

		this.getHibernateTemplate().update(file);
	}

	public List<ClientFile> queryAllFileByIsP() {

		List<ClientFile> fileList = this.getHibernateTemplate().find("from ClientFile where ispublic='ÊÇ'");
		
		return fileList;
	}

}
