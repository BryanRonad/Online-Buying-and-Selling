package pcpfattempt2;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.UserDao;

@MultipartConfig(maxFileSize = 16177216)//1.5mb
public class AddListing extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddListing() {
        super();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter p = response.getWriter();
		response.setContentType("text/html");
		InputStream inputStream = null;
		String name = request.getParameter("name");
	 	String desc = request.getParameter("desc");
	 	String cost = request.getParameter("cost");
	 	String location = request.getParameter("location");
	 	String mobile = request.getParameter("mobile");
	 	Part part = request.getPart("image");
	 	
	 	UserDao dao=new UserDao();
	 	
	 	if(dao.addListing(name,desc,cost,location,mobile,part.getInputStream())==1) {
	 		p.println("<script>alert('Listing added successfully.')</script>");
			response.setHeader("Refresh", "1;index.html");
	 	}else {
	 		p.println("<script type=\"text/javascript\">"); 
			p.println("alert(\"Listing failed\")");
			p.println("</script>");
	 		
	 	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}


