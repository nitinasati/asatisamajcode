package com.mkyong.customer.action;

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
import com.mkyong.customer.form.LoginForm;
import com.mkyong.customer.model.User;

public class LoginAction extends Action {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
    HttpServletRequest request, HttpServletResponse response)
    throws Exception {
    	
		SessionFactory sessionFactory = 
				(SessionFactory) servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
			Session session = sessionFactory.openSession();
			HttpSession sessionHttp = request.getSession();	
        LoginForm loginForm = (LoginForm)form;
        User user = new User();
        BeanUtils.copyProperties(user, loginForm);
        
        try
        {
	        if (null == loginForm.getUserName() || loginForm.getUserName().equalsIgnoreCase("") || null == loginForm.getPassword()) {
				System.out.println("login failure");
				return mapping.findForward("loginfailure");
	        }
        }
        catch (Exception e)
        {
			System.out.println("login failure");
			return mapping.findForward("loginfailure");
        }
		String preparedSQL = "from User where upper(userName) = '" + user.getUserName().trim().toUpperCase() + "' and password = '" + user.getPassword() + "'";
		Query query = session.createQuery(preparedSQL);
		List<User> list = query.list();
		if (list.size() > 0) {
			if (loginForm.getUserName().equalsIgnoreCase(
					list.get(0).getUserName())
					&& loginForm.getPassword()
							.equals(list.get(0).getPassword())) {
				System.out.println("login success");
				sessionHttp.setAttribute("userName", list.get(0).getUserName());
				sessionHttp.setAttribute("password", list.get(0).getPassword());
				return mapping.findForward("adminpage");
			} else {
				System.out.println("login failure");
				return mapping.findForward("loginfailure");
			}
		} else {
			System.out.println("login failure");
			return mapping.findForward("loginfailure");
		}
        
            
    }
}