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
@WebServlet("/log")
public class Login extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String pwd=req.getParameter("pwd");
		User_dto udto=new User_dto(null, null,email, null, pwd, null, 0, 0);
		User_dao udao=new User_dao();
		
		try {
			udao.conn();
			udao.createTable();
			System.out.println("it has done");
		    String result=udao.login(udto);
			if(result.equals("success"))
			{
				HttpSession hs=req.getSession();
				hs.setAttribute("udto", udto);
				RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
				rd.forward(req, resp);
			}
			else
			{
				req.setAttribute("result", result);
				RequestDispatcher rd=req.getRequestDispatcher("Login.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}


	
	
	