

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
		// DB에 있는 웹툰 데이터를 WebtoonInfo 객체로 만들어서
		// Webtoon.html에 전달
				
		TestInfo dr1 = new TestInfo("에일", "라거", "흑맥주");
		TestInfo dr2 = new TestInfo("참이슬", "잎새주", "처음처럼");
		TestInfo dr3 = new TestInfo("보드카맛", "보드카향", " ");
		TestInfo dr4 = new TestInfo("양주맛", "양주향", "양주도수");
				
		ArrayList<TestInfo> drList = new ArrayList<TestInfo>();
		drList.add(dr1);
		drList.add(dr2);
		drList.add(dr3);
		drList.add(dr4);
				
		// DB에 있는 데이터를 가져왔다고 가정
		System.out.println("요청이 들어왔다.");
		// 데이터를 json 타입으로 바꾼뒤 반환 시켜줘야함
		// 외부 라이브러리 Gson 필요
				
		// Gson객체 만들기 --> 자바의 데이터를 json 타입으로 바꾸어 주는 역할
		Gson gson = new Gson();
		// JsonArray 객체 --> json 타입으로 바뀐 데이터를 저장할 수 있는 역할
		JsonArray jarray = new JsonArray();
				
		for (int i = 0; i < drList.size(); i++) {
			jarray.add(gson.toJson(drList.get(i)));
			// gson 객체를 사용한다면 키값을 알아서 지정해줌
			// 키값 --> 해당하는 변수명
		}
		response.setContentType("text/plain; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.print(jarray);
	}

}
