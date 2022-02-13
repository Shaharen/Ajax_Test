

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test2")
public class test2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<String> idGroup = new ArrayList<String>();
		
		idGroup.add("admin");
		idGroup.add("smhrd");
		idGroup.add("night");
		
		System.out.println("요청이 들어옴");
		
		String nick = request.getParameter("id");
		int count = 0;
		
		for (int i = 0; i < idGroup.size(); i++) {
			if(nick.equals(idGroup.get(i))) {
				count++;
			}
		}
		PrintWriter out = response.getWriter();
		out.print(count);
	}

}
