package myProject;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ProductDAO;
import DAO.RoomsDAO;
import DTO.ProductDTO;
import DTO.RoomsDTO;

/**
 * Servlet implementation class RoomSearchAction
 */
@WebServlet("/RoomSearchAction")
public class RoomSearchAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomSearchAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet RoomSearchAction");
		HttpSession session = request.getSession();
		
		RoomsDAO rDao = new RoomsDAO();
		ProductDAO pDao = new ProductDAO();
		ProductDTO pDto = new ProductDTO();
		
		String indexData = request.getParameter("indexData");
		
		List<RoomsDTO> bestList = rDao.BestListRooms();
		List<RoomsDTO> roomsList = rDao.listRooms();
		pDto = pDao.moveProduct(indexData);
		
		request.setAttribute("BestRoomsList", bestList);
		request.setAttribute("RoomsList", roomsList);
		session.setAttribute("moveProduct", pDto);
		
		System.out.println(indexData);
		System.out.println(pDto);
		
		
		RequestDispatcher dis = request.getRequestDispatcher("IndexDetail.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost RoomSearchAction");
		
		RoomsDAO rDao = new RoomsDAO();
		
		List<RoomsDTO> bestList = rDao.BestListRooms();
		List<RoomsDTO> roomsList = rDao.listRooms();
		request.setAttribute("BestRoomsList", bestList);
		request.setAttribute("RoomsList", roomsList);
		
		RequestDispatcher dis = request.getRequestDispatcher("IndexDetail.jsp");
		dis.forward(request, response);
	}

}
