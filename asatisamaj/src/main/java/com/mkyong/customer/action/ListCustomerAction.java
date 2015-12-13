package com.mkyong.customer.action;
 
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.mkyong.common.plugin.HibernatePlugin;
import com.mkyong.customer.model.AuditList;
import com.mkyong.customer.model.Customer;
 
public class ListCustomerAction extends Action{
	
	public ActionForward execute(ActionMapping mapping,ActionForm form,
		HttpServletRequest request,HttpServletResponse response) 
        throws Exception {
		SessionFactory sessionFactory = 
			(SessionFactory) servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
		String gender = request.getParameter("gender");
		String registration = request.getParameter("registration");
		String samajArea = request.getParameter("samajArea");
		String manglik = request.getParameter("manglik");
		
		AuditList auditList = new AuditList();
		Session session = sessionFactory.openSession();
		
		DynaActionForm dynaCustomerListForm = (DynaActionForm)form;
		String preparedSQL = "from Customer where status = 'Active' ";
		
	//	System.out.println("1 : " + request.getHeader("User-Agent"));
		auditList.setIpAddress(request.getRemoteAddr());
		auditList.setQueryString(request.getQueryString());
		auditList.setRemoteHost(request.getHeader("User-Agent"));
		auditList.setRemoteUser(request.getRemoteUser());
		auditList.setSessionId(request.getRequestedSessionId());
		auditList.setLocale(request.getLocale().toString());
		auditList.setCreateDate(new Date());
		auditList.setModifyDate(new Date());
		
		session.beginTransaction();
		session.saveOrUpdate(auditList);
		session.getTransaction().commit();
		
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
			preparedSQL = preparedSQL + " and manglik = '" + manglik +"' ";
		}
		preparedSQL = preparedSQL + " order by member_id desc";
		if (null != registration)
		{
			if (!registration.trim().equalsIgnoreCase(""))
			preparedSQL = "from Customer where status = 'Active' and memberid = '" + registration +"' ";
		}
		if (null != gender)
			if (gender.equalsIgnoreCase("all"))
			preparedSQL = "from Customer where status = 'Active' order by member_id desc";
		//save it
		Query query = session.createQuery(preparedSQL);
/*	      query = query.setFirstResult(0);
	      query.setMaxResults(10);
*/		List<Customer> list = query.list();
			dynaCustomerListForm.set("customerList", list);
	        
		return mapping.findForward("success");
	  
	}

}