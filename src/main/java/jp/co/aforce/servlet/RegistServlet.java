package jp.co.aforce.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.co.aforce.bean.Bean;
import jp.co.aforce.dao.MemberDao;
/**
 * Servlet implementation class RegistServlet
 */
@WebServlet("/view/registservlet")
public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		try {
			
		String member_id =request.getParameter("member_id");
		String last_name =request.getParameter("last_name");
		String first_name =request.getParameter("first_name");
		String sex =request.getParameter("sex");
		int birth_year = Integer.parseInt(request.getParameter("birth_year"));
		int birth_month = Integer.parseInt(request.getParameter("birth_month"));
		int birth_day  = Integer.parseInt(request.getParameter("birth_day"));
		String job = request.getParameter("job");
		String phone_number = request.getParameter("phone_number");
		String mail_address =request.getParameter("mail_address");
		
	    Bean p = new Bean();
		
		p.setMember_id(member_id);
		p.setLast_name(last_name);
		p.setFirst_name(first_name);
		p.setSex(sex);
		p.setBirth_year(birth_year);
		p.setBirth_month(birth_month);
		p.setBirth_day(birth_day);
		p.setJob(job);
		p.setPhone_number(phone_number);
		p.setMail_address(mail_address);
		MemberDao memberDao = new MemberDao();
		int line = memberDao.insert(p);
		out.println(p);
		
		if(line > 0) {
		    out.println("追加できました");
		} else {
		    out.println("追加できていません");
		}
		
		
		} catch (Exception e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		
		
	}

	}


