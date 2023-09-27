import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/saludador") //esta es la pagina que recibe, aqui NO va la direccion el html, va a la "señal" a la que el html envia los datos
public class Saludador extends HttpServlet {

	private static final long serialVersionUID = 1L; //Esto no es necesario, pero si dicen que lo pongas, hazlo

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	
		String nombre = req.getParameter("name"); //esto es como cuando lo hacemos en js
		
		PrintWriter writer = resp.getWriter(); //Esto siempre se hace para poder escribir
		
		saludar(writer, nombre);
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nombre = req.getParameter("name");
		
		PrintWriter writer = resp.getWriter(); //Esto siempre se hace para poder escribir
		
		saludar(writer, nombre);;
	}
	
	protected void saludar(PrintWriter writer, String nombre) {
		writer.println("<html>");
		
			writer.println("<body>");
				
				writer.println("Hola " + nombre);
			
			writer.println("</body>");
		
		writer.println("</html>");
	}
	
}
