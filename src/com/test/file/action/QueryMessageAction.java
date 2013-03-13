package com.test.file.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.test.file.dao.ClientDao;
import com.test.file.dao.MessageDao;
import com.test.file.model.Client;
import com.test.file.model.ClientMessage;

public class QueryMessageAction extends Action {
	
	private MessageDao messageDao;
	
	private Client client;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){

		try {
			client = (Client)request.getSession().getAttribute("client");
			
			List<ClientMessage> msglist = messageDao.queryMsgBySender(client);
			
			
			request.setAttribute("msglist", msglist);
			
			return mapping.findForward("success");
		} catch (Exception e) {
			e.printStackTrace();
			
			request.setAttribute("flag", "querysendererror");
			
			return mapping.findForward("failure");
		}
	}

	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}

	public void setClient(Client client) {
		this.client = client;
	}
}
