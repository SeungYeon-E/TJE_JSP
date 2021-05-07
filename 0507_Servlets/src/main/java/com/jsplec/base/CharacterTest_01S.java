package com.jsplec.base;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CharacterTest_01S
 */
@WebServlet("/CharacterTest_01S")
public class CharacterTest_01S extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CharacterTest_01S() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		String animal = request.getParameter("animal");
		String[] food = request.getParameterValues("food");
		
		
		writer.println("<html>");
		writer.println("<head><title>성격테스트</title></head>");
		writer.println("<body>");
		writer.println("<h1>성격테스트</h1>");
		writer.println(name + "님의 성격 테스트 결과<br><br>");
		writer.println(color + "색을 좋아하는 당신은 ");
		writer.println(animal + " 그리고 ");
		
		for(int i=0; i<food.length; i++) {
			if(i<food.length-1) {
				writer.println(food[i] + "과 ");
			}else {
				writer.println(food[i] + "을 좋아하는 성격입니다." + "<br><br>");
			}
		}
		
		for(int i=0; i<food.length; i++) {
			if(i==food.length-1) {
				writer.println(food[i] + "을 좋아하는 성격입니다." + "<br><br>");
				break;
			}
			writer.println(food[i] + "과 ");
		}
		
		writer.println("--------------------------<br>");
		writer.println("저장 되었습니다.");
		writer.println("</body>");
		writer.println("</html>");
	}

}
