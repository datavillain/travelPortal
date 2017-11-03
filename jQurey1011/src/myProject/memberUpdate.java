package myProject;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import DAO.MemberDAO;
import DTO.MemberDTO;

/**
 * Servlet implementation class memberUpdate
 */
@WebServlet("/memberUpdate")
public class memberUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public memberUpdate() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet memberUpdate");
		HttpSession session = request.getSession();
		
		String code = null;
		
		if(session.getAttribute("loginUser") != null){
			RequestDispatcher dis = request.getRequestDispatcher("MemberUpdate.jsp");
			dis.forward(request, response);
		
		} else {
			code = "welcomeLogin.jsp";
			request.setAttribute("code", "3");
			RequestDispatcher dis = request.getRequestDispatcher(code);
			dis.forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost memberUpdate");
		request.setCharacterEncoding("UTF-8");//한글 깨짐 방지용~~
		HttpSession session = request.getSession();
		
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
		
		mDao.memberUpdate(mDto);
		session.setAttribute("loginUser", mDto);
		
		response.sendRedirect("memberUpdate");
		
	}
		
		
	}


