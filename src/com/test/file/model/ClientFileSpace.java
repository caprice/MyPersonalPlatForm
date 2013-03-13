package com.test.file.model;

public class ClientFileSpace {

	//用户文件空间id
	private int spaceid;
	
	//用户总存储空间大小
	private float filespace;
	
	//用户剩余存储空间大小
	private float fileexist;
	
	//用户文件数量
	private int filecount;
	
	private Client client;

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public int getSpaceid() {
		return spaceid;
	}

	public void setSpaceid(int spaceid) {
		this.spaceid = spaceid;
	}

	public float getFilespace() {
		return filespace;
	}

	public void setFilespace(float filespace) {
		this.filespace = filespace;
	}

	public float getFileexist() {
		return fileexist;
	}

	public void setFileexist(float fileexist) {
		this.fileexist = fileexist;
	}

	public int getFilecount() {
		return filecount;
	}

	public void setFilecount(int filecount) {
		this.filecount = filecount;
	}

}
