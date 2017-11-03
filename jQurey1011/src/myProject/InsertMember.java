package myProject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import DAO.MemberDAO;
import DTO.MemberDTO;

/**
 * Servlet implementation class InsertMember
 */
@WebServlet("/InsertMember")
public class InsertMember extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMember() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet memberInsert");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost memberInsert");
		
		request.setCharacterEncoding("UTF-8");
		String code = null;
		
		String p_id = request.getParameter("memid");
		String p_pw = request.getParameter("mempw");
		String p_name = request.getParameter("memname");
		String p_phone = request.getParameter("memphone");
		String p_email = request.getParameter("mememail");
		String p_zip = request.getParameter("memzip");
		String p_addr1 = request.getParameter("memaddr1");
		String p_addr2 = request.getParameter("memaddr2");
		
		
		
		
		MemberDAO mDao = new MemberDAO();
		MemberDTO mDto = new MemberDTO(p_id, p_pw, p_name, p_phone, p_email, p_zip, p_addr1, p_addr2);
		
		int result =mDao.memberInsert(mDto);
		
		System.out.println(result);
		
		if(result > 0 ){
			RequestDispatcher dis = request.getRequestDispatcher("welcome.jsp");
			dis.forward(request, response);
		} else {
			code = "Join.jsp";
			request.setAttribute("code", "2");
			RequestDispatcher dis = request.getRequestDispatcher(code);
			dis.forward(request, response);
		}
		
	}

}
