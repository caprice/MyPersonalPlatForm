package com.test.file.model;

public class ClientFileSpace {

	//�û��ļ��ռ�id
	private int spaceid;
	
	//�û��ܴ洢�ռ��С
	private float filespace;
	
	//�û�ʣ��洢�ռ��С
	private float fileexist;
	
	//�û��ļ�����
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
