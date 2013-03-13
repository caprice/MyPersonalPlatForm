package com.test.file.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.test.file.dao.FileSpaceDao;
import com.test.file.model.Client;
import com.test.file.model.ClientFileSpace;

public class FileSpaceAction extends Action {

	private Client client;
	
	private FileSpaceDao fileSpaceDao;
	
	private ClientFileSpace fileSpace;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) 
			throws Exception{
		
			client = (Client)request.getSession().getAttribute("client");
			if(client == null){
				request.setAttribute("flag", "queryfilespaceerror");
				return mapping.findForward("failure");
			}else {
				fileSpace = fileSpaceDao.querySpaceByUid(client);
				
				request.setAttribute("fileSpace", fileSpace);
				
				return mapping.findForward("success");
			}	
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public void setFileSpaceDao(FileSpaceDao fileSpaceDao) {
		this.fileSpaceDao = fileSpaceDao;
	}

	public void setFileSpace(ClientFileSpace fileSpace) {
		this.fileSpace = fileSpace;
	}

}
