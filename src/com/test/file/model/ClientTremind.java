package com.test.file.model;

import java.util.Date;

public class ClientTremind {

	//����¼id��
	private int tremindid;
	
	//����¼����
	private String theme;
	
	//����¼����
	private String content;
	
	//����¼��д����
	private Date makeDate;
	
	private Client client;

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public int getTremindid() {
		return tremindid;
	}

	public void setTremindid(int tremindid) {
		this.tremindid = tremindid;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getMakeDate() {
		return makeDate;
	}

	public void setMakeDate(Date makeDate) {
		this.makeDate = makeDate;
	}
	
}
