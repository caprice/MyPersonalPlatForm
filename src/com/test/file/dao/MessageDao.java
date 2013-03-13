package com.test.file.dao;

import java.util.List;

import com.test.file.model.Client;
import com.test.file.model.ClientMessage;

public interface MessageDao {

	public void addMessage(ClientMessage message);
	
	public List<ClientMessage> queryMsgBySender(Client client);
	
	public void modifyMessage(ClientMessage message);
	
	public List<ClientMessage> queryMsgByUid(Client client);
}
