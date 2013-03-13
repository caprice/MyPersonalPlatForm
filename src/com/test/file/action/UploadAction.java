package com.test.file.action;

import java.io.FileOutputStream;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;

import com.test.file.dao.ClientFileDao;
import com.test.file.dao.FileSpaceDao;
import com.test.file.form.UploadForm;
import com.test.file.model.Client;
import com.test.file.model.ClientFile;
import com.test.file.model.ClientFileSpace;

public class UploadAction extends Action {

	private Client client;
	
	private FileSpaceDao fileSpaceDao;
	
	private ClientFileSpace fileSpace;
	
	private ClientFileDao clientFileDao;
	
	private ClientFile file;

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response){
		try {
			
			UploadForm uf = (UploadForm)form;
			
			FormFile myFile = uf.getMyfile();
			
			if (myFile != null) {
				
				FileOutputStream fos = new FileOutputStream("../webapps/PersonalPlatForm/upload/" + myFile.getFileName());
				fos.write(myFile.getFileData());
				fos.flush();
				fos.close();
			}else {
				request.setAttribute("flag", "uploaderror");
			}
			
			client = (Client)request.getSession().getAttribute("client");
			
			fileSpace = fileSpaceDao.querySpaceByUid(client);
			fileSpace.setFilespace(102400);
			fileSpace.setFileexist(fileSpace.getFileexist() - myFile.getFileSize()/1024);
			fileSpace.setFilecount(fileSpace.getFilecount() + 1);
			fileSpace.setClient(client);
			fileSpaceDao.modifyFileSpace(fileSpace);
			
			
			file.setFilename(myFile.getFileName());
			file.setFilesize(myFile.getFileSize());
			file.setUploadtime(new Date());
			file.setIspublic("·ñ");
			file.setClient(client);
			
			clientFileDao.addFile(file);
			
			request.setAttribute("flag", "uploadsuccess");
			
			return mapping.findForward("success");
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("flag", "uploaderror");
			return mapping.findForward("failure");
		}
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public void setFileSpaceDao(FileSpaceDao fileSpaceDao) {
		this.fileSpaceDao = fileSpaceDao;
	}

	public void setFileSpace(ClientFileSpace fileSpace) {
		this.fileSpace = fileSpace;
	}

	public void setClientFileDao(ClientFileDao clientFileDao) {
		this.clientFileDao = clientFileDao;
	}

	public void setFile(ClientFile file) {
		this.file = file;
	}
	
}
