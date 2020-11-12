package dba_jpa;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/")
public class ProductServlet extends  HttpServlet{
	
	private static final long serialVersionUID = 1L;
	private ProductsDAL proddal;
	
	public void init() {
		proddal = new ProductsDAL();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//String action = request.getServletPath();

		try {
			
			
			
				insertProduct(request, response);
				
			
				
		}catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

	


	private void insertProduct(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException,SQLException, IOException {
		int barcode = Integer.valueOf(request.getParameter("barcode"));
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		String info = request.getParameter("info");
		System.out.println(barcode+" "+name+" "+color+" "+ info);
			
		Product prod=proddal.getProduct(barcode);
		System.out.println(barcode+" "+name+" "+color+" "+ info);
		
		
		if(prod==null) {
			Product prodi = new Product(barcode, name, color, info);
			proddal.saveProduct(prodi);
			int error = 0;
			request.setAttribute("proddal", prodi);
			request.setAttribute("errorcode", error);
			RequestDispatcher dispatcher = request.getRequestDispatcher("showprod.jsp");
			dispatcher.forward(request, response);
		}else if(prod !=null) {
			int error = 101;
			request.setAttribute("proddal", prod);
			request.setAttribute("errorcode", error);
			RequestDispatcher dispatcher = request.getRequestDispatcher("showprod.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}

