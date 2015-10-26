package com.mkyong.customer.action;
 
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.mkyong.common.plugin.HibernatePlugin;
import com.mkyong.customer.form.CustomerForm;
import com.mkyong.customer.model.Customer;

 
public class AddCustomerAction extends Action{
	//private final String UPLOAD_DIRECTORY = "C://Files//";
	public ActionForward execute(ActionMapping mapping,ActionForm form,
		HttpServletRequest request,HttpServletResponse response) 
        throws Exception {
	//	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		SessionFactory sessionFactory = 
			(SessionFactory) servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
		Session session = sessionFactory.openSession();
		
		CustomerForm customerForm = (CustomerForm)form;
		Customer customer = new Customer();
		// process only if its multipart content

		//copy customerform to model
		BeanUtils.copyProperties(customer, customerForm);
/*		 File file = new File("C:\\Users\\Nitin\\Desktop\\asatisamaj\\src\\main\\webapp\\images\\cp_best.gif");  
		    byte[] bFile = new byte[(int) file.length()];  
		  
		    try {  
		     FileInputStream fileInputStream = new FileInputStream(file);  
		     //convert file into array of bytes  
		     fileInputStream.read(bFile);  
		     fileInputStream.close();  
		    } catch (Exception e) {  
		     e.printStackTrace();  
		    } */ 

/*		// process only if its multipart content
		if (isMultipart) {
			// Create a factory for disk-based file items
			FileItemFactory factory = new DiskFileItemFactory();

			// Create a new file upload handler
			ServletFileUpload upload = new ServletFileUpload(factory);

				// Parse the request
				List<FileItem> multiparts = upload.parseRequest(request);

				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						String name = new File(item.getName()).getName();
						item.write(new File(UPLOAD_DIRECTORY + File.separator + name));
					}
				}

		}

*/		//save it
	//	Blob blob = (Blob) Hibernate.createBlob(bFile);
	//	customer.setImage(blob);
		
		customer.setStatus("Active");
		customer.setCreateDateTime(new Date());
		customer.setModifyDateTime(new Date());
		
		session.beginTransaction();
		session.saveOrUpdate(customer);
		session.getTransaction().commit();
		
		return mapping.findForward("success");
	  
	}
	
}