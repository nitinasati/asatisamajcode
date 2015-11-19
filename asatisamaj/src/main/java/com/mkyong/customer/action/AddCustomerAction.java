package com.mkyong.customer.action;
 
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.mkyong.common.plugin.HibernatePlugin;
import com.mkyong.customer.form.CustomerForm;
import com.mkyong.customer.model.Customer;

 
public class AddCustomerAction extends Action{
	private final String UPLOAD_DIRECTORY = "C://Files//";
	public ActionForward execute(ActionMapping mapping,ActionForm form,
		HttpServletRequest request,HttpServletResponse response) 
        throws Exception {
		SessionFactory sessionFactory = 
			(SessionFactory) servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
		Session session = sessionFactory.openSession();
		CustomerForm customerForm = (CustomerForm)form;
		Customer customer = new Customer();

		//copy customerform to model
		BeanUtils.copyProperties(customer, customerForm);
	//save it
	
		customer.setStatus("Submitted");
		customer.setCreateDateTime(new Date());
		customer.setModifyDateTime(new Date());
		
		session.beginTransaction();
		session.saveOrUpdate(customer);
		session.getTransaction().commit();
		
		String preparedSQL = "from Customer where memberid = (select max(memberid) from Customer)";
		Query query = session.createQuery(preparedSQL);
		List<Customer> list = query.list();
		customerForm.setMemberId(list.get(0).getMemberid());
	//	request.setAttribute("customerList", list);

		
		return mapping.findForward("registration");
	  
	}
	
}