package com.test.file.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.test.file.dao.ClientDao;
import com.test.file.model.Client;

public class IndexAction extends Action {
	
	private ClientDao clientDao;
	
	private Client client;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		try {
			List<Client> clientList = clientDao.queryClient();
			
			request.setAttribute("clientList", clientList);
			
			return mapping.findForward("success");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("flag", "indexerror");
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
