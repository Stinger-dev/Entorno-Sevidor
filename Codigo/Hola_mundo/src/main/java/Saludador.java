import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("../webapp/index.html")
public class Saludador extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	
		String nombre = req.getParameter("name");
		
		PrintWriter writer = resp.getWriter();
		
		writer.println("<html>");
			
			writer.println("<body>");
				
				writer.println("Hola mundo" + nombre);
			
			writer.println("</body>");
		
		writer.println("</html>");

		
	}



	
}