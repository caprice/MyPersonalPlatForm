package com.test.file.model;

import java.util.Date;

public class ClientMessage {

	//��Ϣid��
	private int messageid;
	
	//��Ϣ������
	private String sender;
	
	//��Ϣ����
	private String content;
	
	//��Ϣ����ʱ��
	private Date sendtime;
	
	private Client client;

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public int getMessageid() {
		return messageid;
	}

	public void setMessageid(int messageid) {
		this.messageid = messageid;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getSendtime() {
		return sendtime;
	}

	public void setSendtime(Date sendtime) {
		this.sendtime = sendtime;
	}
}
