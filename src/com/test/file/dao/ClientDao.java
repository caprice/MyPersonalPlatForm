package com.test.file.dao;

import java.util.List;

import com.test.file.model.Client;

public interface ClientDao {

	public void addClient(Client client);
	
	public boolean queryClientByNamePass(String username, String password);
	
	public Client queryClientByName(String username);
	
	public void modifyClient(Client client);
	
	public List<Client> queryClient();
	
	public Client queryClientById(int userid);
	
}
