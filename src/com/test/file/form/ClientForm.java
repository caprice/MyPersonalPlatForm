package com.test.file.form;

import org.apache.struts.action.ActionForm;

public class ClientForm extends ActionForm {

	private static final long serialVersionUID = 1L;
	
	//�û�id
	private int userid;
	
	//�û���
	private String username;
	
	//�û�����
	private String password;
	
	//ȷ������
	private String confirmpwd;
	
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

	public String getConfirmpwd() {
		return confirmpwd;
	}

	public void setConfirmpwd(String confirmpwd) {
		this.confirmpwd = confirmpwd;
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
