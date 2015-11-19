package com.mkyong.customer.action;
 
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.mkyong.common.plugin.HibernatePlugin;
import com.mkyong.customer.model.Customer;
import com.mkyong.customer.model.User;
 
public class ListAdminAction extends Action{
	
	public ActionForward execute(ActionMapping mapping,ActionForm form,
		HttpServletRequest request,HttpServletResponse response) 
        throws Exception {
		SessionFactory sessionFactory = 
			(SessionFactory) servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
		HttpSession sessionHttp = request.getSession();
		String gender = request.getParameter("gender");
		String registration = request.getParameter("registration");
		String samajArea = request.getParameter("samajArea");
		String manglik = request.getParameter("manglik");

/*		AWSBucketConnection awsBucket = new AWSBucketConnection();
		String folderName = "testFolder";
		awsBucket.createFolder(awsBucket.bucketName, folderName, awsBucket.s3client);*/
		
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

		
		DynaActionForm dynaCustomerAdminListForm = (DynaActionForm)form;
		preparedSQL = "from Customer where status in ('Submitted', 'Rejected', 'Deactivate') order by member_id desc";

		
		if (null != gender)
		{
			if (gender.trim().length() > 1)
			preparedSQL = preparedSQL + " and gender = '" + gender +"' ";
		}
		if (null != samajArea)
		{
			if(samajArea.trim().length() > 1 && !samajArea.trim().equalsIgnoreCase("All"))
				preparedSQL = preparedSQL + " and samajArea = '" + samajArea + "'";
		}
			
		if (null != manglik)
		{
			if (manglik.trim().length() > 1)
			preparedSQL = preparedSQL + " and manglik = '" + manglik +"'";
		}
		if (null != registration)
		{
			if (!registration.trim().equalsIgnoreCase(""))
			preparedSQL = "from Customer where status in ('Submitted', 'Rejected', 'Deactivate') and memberid = '" + registration +"' order by member_id desc";
		}
		if (null != gender)
			if (gender.equalsIgnoreCase("all"))
			preparedSQL = "from Customer where status in ('Active') order by member_id desc";
		//save it
		query = session.createQuery(preparedSQL);
		List<Customer> list = query.list();
		dynaCustomerAdminListForm.set("customerAdminList", list);
	        
		return mapping.findForward("listprofileapproval");
	  
	}

}