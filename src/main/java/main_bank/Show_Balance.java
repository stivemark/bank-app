package main_bank;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao_bank.Bank_dao;
import dto_Bank.Bank_dto;
import dto_Bank.User_dto;
@WebServlet("/sho")
public class Show_Balance extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs=req.getSession();
		User_dto  udto1=(User_dto)hs.getAttribute("udto");
		String email=udto1.getEmail();
	
		Bank_dao bdao=new Bank_dao();
		String pi=req.getParameter("pin");
		int pin=Integer.parseInt(pi);
		Bank_dto bdto=new Bank_dto(null, null, email, null, null, 0, pin, 0, 0, 0,null);
		
		try {
			
			double bal=bdao.showbalance(bdto);
			if(bal>=0)
			{
				//double bal=bdao.showbalance(bdto);
				
				req.setAttribute("bal", bal);
				RequestDispatcher rd=req.getRequestDispatcher("show_balance.jsp");
				rd.include(req, resp);
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	
	
	

}
