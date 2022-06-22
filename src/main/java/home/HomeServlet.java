package home;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class HomeServlet
 */

@WebServlet("/user")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	static List<BlogUser> blogUsers;

	/**
	 * Default constructor.
	 */
	public HomeServlet() {
		// TODO Auto-generated constructor stub

		blogUsers = new ArrayList<>();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setAttribute("blogUsers", blogUsers);

		req.getRequestDispatcher("/WEB-INF/views/user/list.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String name = (String) req.getParameter("name");
		String email = (String) req.getParameter("email");

		BlogUser b = new BlogUser(name, email);
		b.setUserId(blogUsers.size());
		blogUsers.add(b);

		resp.sendRedirect(req.getContextPath() + "/user");

	}


}
