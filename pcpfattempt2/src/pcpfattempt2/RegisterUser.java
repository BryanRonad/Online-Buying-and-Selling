package pcpfattempt2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;

public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterUser() {
        super();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter p = response.getWriter();
		response.setContentType("text/html");
		String Uemail = request.getParameter("email");
	 	String Ufname = request.getParameter("firstName");
	 	String Ulname = request.getParameter("lastName");
	 	String Password = request.getParameter("passwd");
	 	
	 	UserDao dao=new UserDao();
	 	if(dao.registerUser(Uemail,Ufname,Ulname,Password)==1) {
	 		p.println("<script>alert('User Registered Successfully.')</script>");
			response.setHeader("Refresh", "1;index.html");
	 	}else {
	 		p.println("<script type=\"text/javascript\">"); 
			p.println("alert(\"Registration failed\")");
			p.println("</script>");
	 		
	 	}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

