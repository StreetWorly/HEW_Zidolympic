package photo;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class TryServlet
 */
@WebServlet("/TryServlet")
public class TryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("utf8");

		HttpSession page_out_session = request.getSession(true);
		ArrayList<PageOut> page_session = (ArrayList<PageOut>)page_out_session.getAttribute("page_out");
		if(page_session!=null){
			page_session.clear();
		}
		
		
		String save=request.getParameter("save");
		String mes=request.getParameter("mes");
		
		TitleDAO dao=new TitleDAO();
		List<Title> titlelist=dao.random_select();
		System.out.println(titlelist.size()+"タイトルサイズ");
		Random random=new Random();
		int i=random.nextInt(titlelist.size());
		Title p=(Title)titlelist.get(i);
		int title_id=p.getTitle_id();
		String titlename=p.getName();
		request.setAttribute("titlename", titlename);
		request.setAttribute("title_id", title_id);
		request.setAttribute("save", save);
		request.setAttribute("mes", mes);
		
		System.out.println("TryServletにはきてる");
		
		request.getRequestDispatcher("try.jsp").forward(request, response);

		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
