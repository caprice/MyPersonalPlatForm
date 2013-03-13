package com.test.file.action;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.test.file.dao.ClientDao;
import com.test.file.dao.MessageDao;
import com.test.file.form.ClientMessageForm;
import com.test.file.model.Client;
import com.test.file.model.ClientMessage;

public class CreateMessageAction extends Action {

	private MessageDao messageDao;
	
	private ClientMessage message;
	
	private ClientDao clientDao;
	
	private Client client;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){

		try {
			ClientMessageForm cmf = (ClientMessageForm)form;
			
			client = (Client)request.getSession().getAttribute("client");
			//…Ë÷√∑¢ÀÕ’ﬂ
			message.setSender(client.getUsername());
			message.setContent(cmf.getContent());
			
			client = clientDao.queryClientByName(cmf.getSender());
			
			message.setClient(client);
			message.setSendtime(new Date());
			
			messageDao.addMessage(message);
			
			request.setAttribute("flag", "createmsgsuccess");
			return mapping.findForward("success");
		
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("flag", "createmsgerror");
			return mapping.findForward("failure");
		}
	}

	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}

	public void setMessage(ClientMessage message) {
		this.message = message;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}

}
