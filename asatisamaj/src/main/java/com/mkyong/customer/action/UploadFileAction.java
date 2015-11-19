package com.mkyong.customer.action;

import java.io.File;
import java.io.FileInputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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


public class UploadFileAction extends Action{

	private final String UPLOAD_DIRECTORY = System.getProperty("user.dir");;
	
	public ActionForward execute(ActionMapping mapping,ActionForm form,
		HttpServletRequest request,HttpServletResponse response) 
        throws Exception {
		SessionFactory sessionFactory = 
				(SessionFactory) servlet.getServletContext().getAttribute(HibernatePlugin.KEY_NAME);
		Session session = sessionFactory.openSession();
	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	String memberId = "";
	String name = "";

	// process only if its multipart content
	if (isMultipart) {
		// Create a factory for disk-based file items
		FileItemFactory factory = new DiskFileItemFactory();
		
		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			// Parse the request
			@SuppressWarnings("unchecked")
			List<FileItem> multiparts = upload.parseRequest(request);

			for (FileItem item : multiparts) {
				if (!item.isFormField()) {
					name = new File(item.getName()).getName();
					System.out.println("Inside item if " + name + " size " + item.getSize() + " working directory "  + UPLOAD_DIRECTORY);
					if (item.getSize() > 1048576L)
					{
						request.setAttribute("fileUploadError", "File size is exceeded the size limit (1 MB)");
						return mapping.findForward("fileUploadError");
					}
					item.write(new File(UPLOAD_DIRECTORY + File.separator + name));
				}
				else{
					String fieldName = item.getFieldName();
					String fieldValue = item.getString();
					if (fieldName.equalsIgnoreCase("memberId"))
						memberId = fieldValue;
					System.out.println("FieldName - " + fieldName + " FieldValue - " +fieldValue);
				}
			}
			File file = new File(UPLOAD_DIRECTORY + File.separator + name);
			byte[] bFile = new byte[(int) file.length()];
			try {  
			     FileInputStream fileInputStream = new FileInputStream(UPLOAD_DIRECTORY + File.separator + name);  
			     //convert file into array of bytes  
			     fileInputStream.read(bFile);  
			     fileInputStream.close();  
			    } catch (Exception e) {  
			     e.printStackTrace();  
			    }
				session.beginTransaction();
	            Query query = session.createQuery("update Customer set imagePath=:imagePath where memberid=:memberid");
	            query.setLong("memberid", Long.parseLong(memberId));
	            query.setBinary("imagePath", bFile);
	            int modifications=query.executeUpdate();
	            session.getTransaction().commit();
		} 
		catch (Exception e) 
		{
		  System.out.println("File upload failed " +e);
		}
		
		
	}
	return mapping.findForward("success");
}

}