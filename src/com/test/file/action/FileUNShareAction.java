package com.test.file.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.test.file.dao.ClientFileDao;
import com.test.file.form.ClientFileForm;
import com.test.file.model.ClientFile;

public class FileUNShareAction extends Action {

	private ClientFileDao clientFileDao;
	
	private ClientFile file;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		
		ClientFileForm cff = (ClientFileForm)form;
		
		int fileid = cff.getFileid();
		
		file = clientFileDao.queryFileById(fileid);
		
		file.setIspublic("·ñ");
		
		clientFileDao.modifyFile(file);

		return mapping.findForward("success");
	}

	public void setClientFileDao(ClientFileDao clientFileDao) {
		this.clientFileDao = clientFileDao;
	}

	public void setFile(ClientFile file) {
		this.file = file;
	}
	
	
}
