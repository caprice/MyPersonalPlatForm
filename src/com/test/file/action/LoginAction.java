package com.test.file.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.test.file.dao.ClientDao;
import com.test.file.form.ClientForm;
import com.test.file.model.Client;

public class LoginAction extends Action {
	
	private ClientDao clientDao;
	private Client client;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ClientForm cf = (ClientForm)form;

		boolean b = clientDao.queryClientByNamePass(cf.getUsername(), cf.getPassword());
		
		if(b) {
			
			client = clientDao.queryClientByName(cf.getUsername());
			request.getSession().setAttribute("client", client);
			
			return mapping.findForward("success");
		} else {
			
			request.setAttribute("flag", "UorPerror");
			return mapping.findForward("failure");
		}
	}

	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	
}
