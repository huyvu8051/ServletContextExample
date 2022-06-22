package home;

import java.io.IOException;
import java.nio.file.attribute.UserPrincipalNotFoundException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/user/detail")
public class UserDetail extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String idString = (String) req.getParameter("id");

		try {
			Integer id = Integer.parseInt(idString);
			BlogUser b = HomeServlet.blogUsers.stream().filter(e -> e.getUserId().equals(id)).findFirst().orElseThrow(()->new NullPointerException("User not found"));
			req.setAttribute("user", b);
			
			req.getRequestDispatcher("/WEB-INF/views/user/detail.jsp").forward(req, resp);
		
		} catch (NumberFormatException e) {
			resp.getWriter().write("invalid id");

		} catch (NullPointerException e) {
			resp.getWriter().write("user not found");
		}

	}
}
