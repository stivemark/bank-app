package main_bank;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao_bank.User_dao;
import dto_Bank.User_dto;
@WebServlet("/profile")
public class Profile extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs=req.getSession();
		User_dto udto=(User_dto) hs.getAttribute("udto");
		if(udto!=null)
		{
			User_dto udt=new User_dto(null, null, udto.getEmail(), null, udto.getPasswd(), null, 0, 0);
			User_dao udao=new User_dao();
			try {
				User_dto ud=udao.profile(udt);
				req.setAttribute("udto1", ud);
				RequestDispatcher rd=req.getRequestDispatcher("user_profile.jsp");
				rd.forward(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
		else
		{
			resp.sendRedirect("Login.jsp");
		}
	}
	
	
	

	

}
