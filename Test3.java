

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Test3")
public class Test3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bSubmit = request.getParameter("bSubmit");
		int count = 0;
		
		if (bSubmit.equals("true")) {
			System.out.println("���� ���");
			count = 1;
		} else {
			System.out.println("���� ����");
			count = 0;
		}
		
		// dao�� �����Ѵٸ�...
		// RecommendDAO dao = new RecommendDAO();
		// dao.jjimCnt(count) - dao���� update
		
		PrintWriter out = response.getWriter();
		out.print(count);
		
	}

}
