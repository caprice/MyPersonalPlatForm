package com.test.file.action;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.test.file.dao.TremindDao;
import com.test.file.form.ClientTremindForm;
import com.test.file.model.Client;
import com.test.file.model.ClientTremind;

public class CreateTremindAction extends Action {
	
	private TremindDao tremindDao;
	
	private ClientTremind tremind;
	
	private Client client;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			 {
		
		try {
			ClientTremindForm ctf = (ClientTremindForm)form;
			
			client = (Client)request.getSession().getAttribute("client");
			
			Date date = new Date();
			
			tremind.setTheme(ctf.getTheme());
			tremind.setContent(ctf.getContent());
			tremind.setMakeDate(date);
			tremind.setClient(client);
			
			tremindDao.addTrimind(tremind);
			
			request.setAttribute("flag", "creTreSuccess");
			
			return mapping.findForward("success");
		
		} catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("flag", "creTreError");
			return mapping.findForward("failure");
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

}
