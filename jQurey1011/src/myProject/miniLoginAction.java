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
 * Servlet implementation class miniLoginAction
 */
@WebServlet("/miniLoginAction")
public class miniLoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public miniLoginAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet miniLoginAction");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost miniLoginAction");
		HttpSession session = request.getSession();
		//default 는 true (새로운Session을 생성)
		String code = null;
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("memid").trim();
		String pw = request.getParameter("mempw").trim();
		
		System.out.println("id = " + id);
		System.out.println("pw = " + pw);
		
		MemberDAO mDao = new MemberDAO();
		
		MemberDTO mDto =  mDao.ckLogin(id, pw);
		
		
		if(mDto != null) {
			session.removeAttribute("id");//세션 초기화(혹시모를 앞의값 제거)
			session.setAttribute("loginUser", mDto);// 세션은 리스트 안되서 DTO로 담음
			code ="mini_login.jsp";
			request.setAttribute("code", mDto);
		} else {
			code = "mini_login.jsp";
			request.setAttribute("code", "2");
		}
		RequestDispatcher dis = request.getRequestDispatcher(code);
		dis.forward(request, response);
		
		}
	}

