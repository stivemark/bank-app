package main_bank;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao_bank.User_dao;
import dto_Bank.User_dto;
@WebServlet("/forg")
public class Forgot_Password extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String pwd=req.getParameter("pwd");
		User_dto udto=new User_dto(null, null, email, null, pwd, null, 0, 0);
		User_dao udao=new User_dao();
		try {
			String result=udao.updatepass(udto);
			if(result.equals("s"))
			{
				String a="password updated";
				req.setAttribute("a", a);
				RequestDispatcher rd=req.getRequestDispatcher("user_forget.jsp");
				rd.include(req, resp);
			}
			else if(result.equals("s1"))
			{
				String a="Invalid email";
				req.setAttribute("b", a);
				RequestDispatcher rd=req.getRequestDispatcher("user_forget.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}



