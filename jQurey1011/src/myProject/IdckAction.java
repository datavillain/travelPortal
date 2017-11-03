package myProject;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;

/**
 * Servlet implementation class IdckAction
 */
@WebServlet("/IdckAction")
public class IdckAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdckAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet idckAtion");
		String ckid = request.getParameter("ckid");
		System.out.println(ckid);
		
		MemberDAO mDao = new MemberDAO();
		
		int  result =  mDao.checkId(ckid);
		System.out.println(result);
		
		request.setAttribute("idCount", result);
		request.setAttribute("message", ckid);
		
		RequestDispatcher dis = request.getRequestDispatcher("idck.jsp");
		dis.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost idckAtion");
	}

}
