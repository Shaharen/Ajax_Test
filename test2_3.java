

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

@WebServlet("/test2_3")
public class test2_3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ArrayList<String> idGroup = new ArrayList<String>();
		
		idGroup.add("admin");
		idGroup.add("smhrd");
		idGroup.add("night");
		
		System.out.println("요청이 들어옴");
		
		
		String id = request.getParameter("input_id");
		
		int idCount = 0;
		
		for (int i = 0; i < idGroup.size(); i++) {
			if(id.equals(idGroup.get(i))) {
				idCount++;
			}
			if ( id.length() < 3 ) {
				idCount++;
			}
		}
		
		response.setContentType("text/plain; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.print(idCount);
	}
	
	

}
