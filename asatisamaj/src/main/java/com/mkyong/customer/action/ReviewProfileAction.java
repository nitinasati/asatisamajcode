package com.mkyong.customer.action;

import java.io.File;
import java.io.FileInputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.mkyong.common.plugin.HibernatePlugin;
import com.mkyong.customer.model.User;


public class ReviewProfileAction extends Action{

	private final String UPLOAD_DIRECTORY = System.getProperty("user.dir");
	
	public ActionForward execute(ActionMapping mapping,ActionForm form,
		HttpServletRequest request,HttpServletResponse response) 
        throws Exception {
		SessionFactory sessionFactory = 
				(SessionFactory) servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
		
		HttpSession sessionHttp = request.getSession();
//	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	String memberId = "";
	String operation = "";
	String userName = (String) sessionHttp.getAttribute("userName");
	String password = (String) sessionHttp.getAttribute("password");
	
	if(null == userName || userName.trim().equalsIgnoreCase("") || null == password)
		return mapping.findForward("loginfailure");
	
	Session session = sessionFactory.openSession();
	String preparedSQL = "from User where upper(userName) = '" + userName.trim().toUpperCase() + "' and password = '" + password + "'";
	Query query = session.createQuery(preparedSQL);
	List<User> listUser = query.list();
	if (listUser.size() > 0) {
		if (userName.equalsIgnoreCase(
				listUser.get(0).getUserName())
				&& password
						.equals(listUser.get(0).getPassword())) {
			System.out.println("session valid");
		} else {
			System.out.println("login failure");
			return mapping.findForward("loginfailure");
		}
	} else {
		System.out.println("login failure");
		return mapping.findForward("loginfailure");
	}
	// process only if its multipart content
						memberId = request.getParameter("memberId");
						operation = request.getParameter("operation");
						
						if (operation.equalsIgnoreCase("Approve"))
							operation = "Active";

						

		session.beginTransaction();
	          	query = session.createQuery("update Customer set status=:status where memberid=:memberid");
	            query.setLong("memberid", Long.parseLong(memberId));
	            query.setString("status", operation);
	            int modifications=query.executeUpdate();
	            session.getTransaction().commit();
		 
	return mapping.findForward("listprofileapproval");
}

}