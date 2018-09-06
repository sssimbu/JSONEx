package org.json;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class JsonExServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		
		
		System.out.println("sample servlet");
		resp.setContentType("text/plain");
		resp.getWriter().println("Hello, world");
	}
}
