package com.test.file.form;

import org.apache.struts.action.ActionForm;

public class ClientMessageForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	//代表了接收者
	private String sender;
	
	private String content;

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

}
