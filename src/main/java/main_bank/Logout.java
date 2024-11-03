package main_bank;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto_Bank.User_dto;
@WebServlet("/logo")
public class Logout extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs=req.getSession();
		User_dto  udto1=(User_dto)hs.getAttribute("udto");
		if(udto1!=null)
		{
			hs.invalidate();
		}
		resp.sendRedirect("Login.jsp");
	}

}
