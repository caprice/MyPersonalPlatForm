package com.test.file.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class LogoutAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		try {
			request.getSession().setAttribute("client", null);
			return mapping.findForward("success");
		} catch(Exception e) {
			e.printStackTrace();
			
			request.setAttribute("flag", "logouterror");
			return mapping.findForward("failure");
		}
		
	}

}
