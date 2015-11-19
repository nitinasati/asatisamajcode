package com.mkyong.customer.action;
 
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
import com.mkyong.customer.model.Team;
 
public class ListTeamMemberAction extends Action{
	
	public ActionForward execute(ActionMapping mapping,ActionForm form,
		HttpServletRequest request,HttpServletResponse response) 
        throws Exception {
		SessionFactory sessionFactory = 
			(SessionFactory) servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
		Session session = sessionFactory.openSession();
		DynaActionForm dynaCustomerTeamAdminListForm = (DynaActionForm)form;
		String preparedSQL = "from Team order by department";

		//save it
		Query query = session.createQuery(preparedSQL);
		List<Team> list = query.list();
		dynaCustomerTeamAdminListForm.set("teamAdminMemberList", list);
	        
		return mapping.findForward("success");
	  
	}

}