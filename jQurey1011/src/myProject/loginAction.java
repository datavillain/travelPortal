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
 * Servlet implementation class loginAction
 */
@WebServlet("/loginAction")
public class loginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginAction() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet loginAction");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost loginAction");
		HttpSession session = request.getSession();
		//default 는 true (새로운Session을 생성)
		String code = null;
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("memid").trim();
		String pw = request.getParameter("mempw").trim();
		
		
		/*String uri = request.getParameter("uri");
		System.out.println("전 주소값 :" +uri);*/
		
		
		String ctx = request.getContextPath();
		String refer = request.getHeader("referer");
		String cutval = "http://localhost:8081" + ctx;
		String ref = refer.substring(cutval.length());
		
		System.out.println("id = " + id);
		System.out.println("pw = " + pw);
		System.out.println("ref : " +refer);
		
		MemberDAO mDao = new MemberDAO();
		MemberDTO mDto =  mDao.ckLogin(id, pw);
		
		
	/*	if (uri == null){
			uri = "MainPage.jsp";
		} */
		
		if(mDto != null) {
				code = ref;
				session.removeAttribute("id");//세션 초기화(혹시모를 앞의값 제거)
				session.setAttribute("loginUser", mDto);// 세션은 리스트 안되서 DTO로 담음
				request.setAttribute("code", "4");
		} else {
			code = ref;
			request.setAttribute("code", "2");
		}
		RequestDispatcher dis = request.getRequestDispatcher(code);
		dis.forward(request, response);
		}
	}


