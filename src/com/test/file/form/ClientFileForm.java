package com.test.file.form;

import javax.servlet.jsp.PageContext;

import org.apache.struts.action.ActionForm;

public class ClientFileForm extends ActionForm {

	private static final long serialVersionUID = 1L;

	private  int fileid;
	
	private String filename;
	
	private PageContext pageContext;

	public PageContext getPageContext() {
		return pageContext;
	}

	public void setPageContext(PageContext pageContext) {
		this.pageContext = pageContext;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getFileid() {
		return fileid;
	}

	public void setFileid(int fileid) {
		this.fileid = fileid;
	}
	
}
