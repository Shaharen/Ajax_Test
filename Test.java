

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

@WebServlet("/Test")
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// DB�� �ִ� ���� �����͸� WebtoonInfo ��ü�� ����
		// Webtoon.html�� ����
				
		TestInfo dr1 = new TestInfo("����", "���", "�����");
		TestInfo dr2 = new TestInfo("���̽�", "�ٻ���", "ó��ó��");
		TestInfo dr3 = new TestInfo("����ī��", "����ī��", " ");
		TestInfo dr4 = new TestInfo("���ָ�", "������", "���ֵ���");
				
		ArrayList<TestInfo> drList = new ArrayList<TestInfo>();
		drList.add(dr1);
		drList.add(dr2);
		drList.add(dr3);
		drList.add(dr4);
				
		// DB�� �ִ� �����͸� �����Դٰ� ����
		System.out.println("��û�� ���Դ�.");
		// �����͸� json Ÿ������ �ٲ۵� ��ȯ ���������
		// �ܺ� ���̺귯�� Gson �ʿ�
				
		// Gson��ü ����� --> �ڹ��� �����͸� json Ÿ������ �ٲپ� �ִ� ����
		Gson gson = new Gson();
		// JsonArray ��ü --> json Ÿ������ �ٲ� �����͸� ������ �� �ִ� ����
		JsonArray jarray = new JsonArray();
				
		for (int i = 0; i < drList.size(); i++) {
			jarray.add(gson.toJson(drList.get(i)));
			// gson ��ü�� ����Ѵٸ� Ű���� �˾Ƽ� ��������
			// Ű�� --> �ش��ϴ� ������
		}
		response.setContentType("text/plain; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.print(jarray);
	}

}
