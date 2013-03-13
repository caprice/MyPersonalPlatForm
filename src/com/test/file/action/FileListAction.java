package com.test.file.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.test.file.dao.ClientFileDao;
import com.test.file.model.Client;
import com.test.file.model.ClientFile;

public class FileListAction extends Action {

	private Client client;
	
	private ClientFileDao clientFileDao;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		try {
			
			client = (Client)request.getSession().getAttribute("client");
			
			List<ClientFile> fileList = clientFileDao.queryAllFile(client);
			
			request.setAttribute("fileList", fileList);
			
			return mapping.findForward("success");
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("flag", "filelisterror");
			return mapping.findForward("failure");
		}
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public void setClientFileDao(ClientFileDao clientFileDao) {
		this.clientFileDao = clientFileDao;
	}
	
	
}
