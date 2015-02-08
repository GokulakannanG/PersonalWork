import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/portal")
public class PortalAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PortalAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        int c=0;
		Cookie cookie = null;
		Cookie[] cookies = null;
		String name,value;
		cookies = request.getCookies();
		response.setContentType("text/html");
		if (cookies != null) {
			for (int i = 0; i < cookies.length;i++ ) {
				cookie = cookies[i];
				name = cookie.getName();
				value = cookie.getValue();
				if (("user".equals(name))
						&& ("kannan".equals(value))) {

					RequestDispatcher view = request.getRequestDispatcher("logout.jsp");
					view.forward(request, response);
					c=1;
				}
				
			}
		}
		
        if(c==0)
        {
		RequestDispatcher view = request.getRequestDispatcher("FbLogin.jsp");
		view.forward(request, response);
        } 
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
