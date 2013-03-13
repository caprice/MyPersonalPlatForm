package com.test.file.dao;

import java.util.List;

import com.test.file.model.Client;
import com.test.file.model.ClientFile;

public interface ClientFileDao {

	public void addFile(ClientFile file);
	
	public List<ClientFile> queryAllFile(Client client);
	
	public ClientFile queryFileById(int fileid);
	
	public void modifyFile(ClientFile file);
	
	public List<ClientFile> queryAllFileByIsP();
}
