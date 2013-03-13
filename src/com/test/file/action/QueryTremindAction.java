package com.test.file.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.test.file.dao.ClientDao;
import com.test.file.dao.TremindDao;
import com.test.file.model.Client;
import com.test.file.model.ClientTremind;

public class QueryTremindAction extends Action {

	private TremindDao tremindDao;
	
	private ClientTremind tremind;
	
	private Client client;
	
	private ClientDao clientDao;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		client = (Client) request.getSession().getAttribute("client");
		
		if(client == null) {
			
			request.setAttribute("flag", "treoutlog");
			return mapping.findForward("failure");
		}else {
			
			client = clientDao.queryClientByName(client.getUsername());
			
			List<ClientTremind> tremindList = tremindDao.queryTremind(client);
			
			request.setAttribute("tremindList", tremindList);
			
			return mapping.findForward("success");
		}
	}

	public void setTremindDao(TremindDao tremindDao) {
		this.tremindDao = tremindDao;
	}

	public void setTremind(ClientTremind tremind) {
		this.tremind = tremind;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}

}
