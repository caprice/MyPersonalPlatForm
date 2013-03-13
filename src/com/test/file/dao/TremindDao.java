package com.test.file.dao;

import java.util.List;

import com.test.file.model.Client;
import com.test.file.model.ClientTremind;

public interface TremindDao {

	public void addTrimind(ClientTremind clientTremind);
	
	public List<ClientTremind> queryTremind(Client client);
}
