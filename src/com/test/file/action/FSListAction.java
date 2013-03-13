package com.test.file.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.test.file.dao.ClientFileDao;
import com.test.file.model.ClientFile;

public class FSListAction extends Action {

	private ClientFileDao clientFileDao;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){

		try {
			List<ClientFile> fslist = clientFileDao.queryAllFileByIsP(); 
			
			request.setAttribute("fslist", fslist);
			
			return mapping.findForward("success");
			
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("flag", "FSListError");
			return mapping.findForward("failure");
		}
	}

	public void setClientFileDao(ClientFileDao clientFileDao) {
		this.clientFileDao = clientFileDao;
	}
	
}
