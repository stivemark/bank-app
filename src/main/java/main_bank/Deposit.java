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
@WebServlet("/dep")
public class Deposit extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String accno=req.getParameter("accountNumber");
//		long accountNumber=Long.parseLong(accno);
		String amount1=req.getParameter("amount");
		double amount=Double.parseDouble(amount1);
		String p=req.getParameter("pin");
		int pin=Integer.parseInt(p);
		
		Bank_dao bdao=new Bank_dao();
		try {
			boolean b=bdao.deposit(amount, pin);
			if(b==true)
			{
				HttpSession session=req.getSession();
				session.setAttribute("amount",amount1);
				String s="deposit is done Successful";
				req.setAttribute("s", s);
				RequestDispatcher rd=req.getRequestDispatcher("deposit.jsp");
				rd.include(req, resp);
				System.out.println("it has done");
//				HttpSession session=req.getSession();
//				session.setAttribute("amount",amount);
				
			}
			else
			{
				String s="Transaction cancelled wrong details";
				req.setAttribute("w", s);
				RequestDispatcher rd=req.getRequestDispatcher("deposit.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}

}
