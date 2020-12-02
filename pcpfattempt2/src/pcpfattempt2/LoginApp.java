package pcpfattempt2;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Listing;
import dao.LoginDao;
import dao.UserDao;


public class LoginApp extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		HttpSession session = request.getSession();
		session.setAttribute("username", email);
		System.out.println("Email ID: "+email);
		System.out.println("Password: "+pass);
		 
		LoginDao dao = new LoginDao();
		if (dao.validate(email, pass)) {
			session.setAttribute("username", email);
			response.setContentType("text/html"); 
			//UserDao d = new UserDao();
			System.out.println(session.getAttribute("username"));	
			try {
				List<Listing> listings;
				listings = UserDao.list();
				request.setAttribute("Listings",listings);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getRequestDispatcher("User.jsp").forward(request, response);
		}else if (email != "" && pass != "") {
			
            request.setAttribute("errorValue", "False");
            RequestDispatcher rd = request.getRequestDispatcher("Error");
            rd.forward(request, response);

		} else {
			RequestDispatcher d = request.getRequestDispatcher("index.html");
			d.forward(request, response);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
}
}
