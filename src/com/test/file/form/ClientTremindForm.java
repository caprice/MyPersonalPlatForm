package com.test.file.form;

import java.util.Date;

import org.apache.struts.action.ActionForm;

public class ClientTremindForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	//����¼id��
	private int tremindid;
	
	//����¼����
	private String theme;
	
	//����¼����
	private String content;
	
	//����¼��д����
	private Date makeDate;

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
