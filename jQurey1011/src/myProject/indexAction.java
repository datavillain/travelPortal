package myProject;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ProductDAO;
import DTO.ProductDTO;

/**
 * Servlet implementation class indexAction
 */
@WebServlet("/indexAction")
public class indexAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public indexAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet indexAction!");

		ProductDAO productDao = new ProductDAO();
		
		List<ProductDTO> newProductList = productDao.listNewProduct();
		List<ProductDTO> famProductList = productDao.listFamilyProduct();
		List<ProductDTO> packProductList = productDao.listPackProduct();
		
		request.setAttribute("placeList", newProductList);
		request.setAttribute("familyList", famProductList);
		request.setAttribute("packList", packProductList);

		RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doPost indexAction!");
		ProductDAO productDao = new ProductDAO();
		
		List<ProductDTO> newProductList = productDao.listNewProduct();
		List<ProductDTO> famProductList = productDao.listFamilyProduct();
		List<ProductDTO> packProductList = productDao.listPackProduct();
		
		request.setAttribute("placeList", newProductList);
		request.setAttribute("familyList", famProductList);
		request.setAttribute("packList", packProductList);

		RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
		dis.forward(request, response);
	
	}
}
