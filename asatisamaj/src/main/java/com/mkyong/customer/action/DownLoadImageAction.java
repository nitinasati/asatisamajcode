package com.mkyong.customer.action;
 
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.mkyong.common.plugin.HibernatePlugin;
import com.mkyong.customer.model.Customer;
 
public class DownLoadImageAction extends Action{
	
	  public ActionForward execute(ActionMapping mapping,ActionForm form,
				HttpServletRequest request,HttpServletResponse response) 
		        throws Exception {
			SessionFactory sessionFactory = 
					(SessionFactory) servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
			Session session = sessionFactory.openSession();
	      try {
	    	String memberId = request.getParameter("memberId");
	  		Query query = session.createQuery("from Customer where memberid=:memberid");
            query.setLong("memberid", Long.parseLong(memberId));
			List<Customer> list = query.list();
				
	           Blob image = list.get(0).getImageFile(); 
	           System.out.println("=============Image2\n" +image); 
	           int len1 = (int) image.length(); 
	           System.out.println("=============len1\n" +len1);                   
	               byte [] rb1 = new byte[len1]; 
	               InputStream readImg1 = image.getBinaryStream(); 
	               int index1=readImg1.read(rb1, 0, len1); 

	               System.out.println("index1"+index1); 
	               response.reset(); 
	               response.setContentType("image/jpg"); 
	               response.getOutputStream().write(rb1,0,len1); 
	               response.getOutputStream().flush(); 

	      } catch (SQLException e) {
	          e.printStackTrace();
	      } catch (IOException e) {
	          e.printStackTrace();
	      }


	  

	  return mapping.findForward("nothing");
	}
}