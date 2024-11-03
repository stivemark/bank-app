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
@WebServlet("/with")
public class Withdraw extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String acnum=req.getParameter("accountNumber");
//		long accountNumber=Long.parseLong(acnum);
		String amo=req.getParameter("amount");
		double amount=Double.parseDouble(amo);
		String pi=req.getParameter("pin");
		int pin=Integer.parseInt(pi);
		Bank_dao bdao=new Bank_dao();
		
		
		
		
		
		
		try {
			boolean b=bdao.withdraw( amount,pin);
			if(b==true)
			{
				HttpSession session=req.getSession();
				session.setAttribute("amount",amo);
				String s="Transaction Successful";
				req.setAttribute("s", s);
//				req.setAttribute("amount",amount);		
				RequestDispatcher rd=req.getRequestDispatcher("withdraw.jsp");
				rd.include(req, resp);
				System.out.println("it has done");
		
				
			}
			else
			{
				String s="Transaction cancelled wrong details";
				req.setAttribute("w", s);
				RequestDispatcher rd=req.getRequestDispatcher("withdraw.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}


}
	
	
	
	
