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

public class ModifyUserAction extends Action {
	
	private ClientDao clientDao;
	private Client client;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ClientForm cf = (ClientForm)form;

		if (cf.getPassword().equals(cf.getConfirmpwd())) {
			
			client = (Client)request.getSession().getAttribute("client");
			client = clientDao.queryClientByName(client.getUsername());
			
			client.setUsername(cf.getUsername());
			client.setPassword(cf.getPassword());
			client.setTruename(cf.getTruename());
			client.setSex(cf.getSex());
			client.setEmail(cf.getEmail());
			client.setTel(cf.getTel());
			client.setQQ(cf.getQQ());
			client.setDescription(cf.getDescription());
			client.setIspublic(cf.getIspublic());
			
			clientDao.modifyClient(client);
			
			request.getSession().setAttribute("client", null);
			request.setAttribute("flag", "modifyusersuccess");
			
			return mapping.findForward("success");
		}
		
		request.setAttribute("flag", "pwderror");
		return mapping.findForward("failure");
	}

	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}

	public void setClient(Client client) {
		this.client = client;
	}

}
