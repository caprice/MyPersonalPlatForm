package com.test.file.dao;

import com.test.file.model.Client;
import com.test.file.model.ClientFileSpace;

public interface FileSpaceDao {

	public ClientFileSpace querySpaceByUid(Client client);
	
	public void addFileSpace(ClientFileSpace fileSpace);
	
	public void modifyFileSpace(ClientFileSpace fileSpace);
}
