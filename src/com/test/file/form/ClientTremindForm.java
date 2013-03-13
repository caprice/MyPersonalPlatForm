package com.test.file.form;

import java.util.Date;

import org.apache.struts.action.ActionForm;

public class ClientTremindForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	//备忘录id号
	private int tremindid;
	
	//备忘录主题
	private String theme;
	
	//备忘录内容
	private String content;
	
	//备忘录填写日期
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
