package com.test.file.model;

public class Client {

	//�û�id
	private int userid;
	
	//�û���
	private String username;
	
	//�û�����
	private String password;
	
	//�û���ʵ����
	private String truename;
	
	//�Ա�
	private String sex;
	
	//email��ַ
	private String email;
	
	//�û���ϵ��ʽ
	private String tel;
	
	//�û�QQ
	private String QQ;
	
	//�û���������
	private String description;
	
	//�Ƿ񹫿��û�������Ϣ
	private String ispublic;
	
	private ClientFileSpace clientFileSpace;

	public ClientFileSpace getClientFileSpace() {
		return clientFileSpace;
	}

	public void setClientFileSpace(ClientFileSpace clientFileSpace) {
		this.clientFileSpace = clientFileSpace;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTruename() {
		return truename;
	}

	public void setTruename(String truename) {
		this.truename = truename;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getQQ() {
		return QQ;
	}

	public void setQQ(String qq) {
		QQ = qq;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getIspublic() {
		return ispublic;
	}

	public void setIspublic(String ispublic) {
		this.ispublic = ispublic;
	}
}
