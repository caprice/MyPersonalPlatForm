package com.test.file.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.test.file.dao.ClientDao;
import com.test.file.dao.FileSpaceDao;
import com.test.file.form.ClientForm;
import com.test.file.model.Client;
import com.test.file.model.ClientFileSpace;

public class RegisterAction extends Action {

	private ClientDao clientDao;
	
	private Client client;
	
	private FileSpaceDao fileSpaceDao;
	
	private ClientFileSpace  fileSpace;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ClientForm cf = (ClientForm)form;
		
		if (cf.getPassword().equals(cf.getConfirmpwd())) {
			
			client.setUsername(cf.getUsername());
			client.setPassword(cf.getPassword());
			client.setTruename(cf.getTruename());
			client.setSex(cf.getSex());
			client.setEmail(cf.getEmail());
			client.setTel(cf.getTel());
			client.setQQ(cf.getQQ());
			client.setDescription(cf.getDescription());
			client.setIspublic(cf.getIspublic());
			
			clientDao.addClient(client);
			
			client = clientDao.queryClientByName(client.getUsername());
			
			fileSpace.setClient(client);
			fileSpace.setFilecount(0);
			fileSpace.setFileexist(102400);
			fileSpace.setFilespace(102400);
			
			fileSpaceDao.addFileSpace(fileSpace);
			
			request.getSession().setAttribute("client", client);
			request.setAttribute("flag", "registersuccess");
			
			return mapping.findForward("success");
		}
		
		request.setAttribute("flag", "pwderror");
		
		return mapping.findForward("failure");
	}

	public void setFileSpaceDao(FileSpaceDao fileSpaceDao) {
		this.fileSpaceDao = fileSpaceDao;
	}

	public void setFileSpace(ClientFileSpace fileSpace) {
		this.fileSpace = fileSpace;
	}

	public void setClientDao(ClientDao clientDao) {
		this.clientDao = clientDao;
	}

	public void setClient(Client client) {
		this.client = client;
	}
}
