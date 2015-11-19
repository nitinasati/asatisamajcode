package com.mkyong.customer.action;
 
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.mkyong.common.plugin.HibernatePlugin;
import com.mkyong.customer.form.TeamForm;
import com.mkyong.customer.model.Team;
import com.mkyong.customer.model.User;

 
public class TeamAddAction extends Action{
		public ActionForward execute(ActionMapping mapping,ActionForm form,
		HttpServletRequest request,HttpServletResponse response) 
        throws Exception {
		SessionFactory sessionFactory = 
			(SessionFactory) servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
		//Session session = sessionFactory.openSession();
		TeamForm teamForm = (TeamForm)form;
		Team team = new Team();
		
	
		HttpSession sessionHttp = request.getSession();
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
		
		//copy teamForm to model
		BeanUtils.copyProperties(team, teamForm);
	//save it
	
		team.setStatus("Active");
		team.setCreateDateTime(new Date());
		team.setModifyDateTime(new Date());

		session.beginTransaction();
		session.saveOrUpdate(team);
		session.getTransaction().commit();
		
		return mapping.findForward("adminpage");
	  
	}
	
}