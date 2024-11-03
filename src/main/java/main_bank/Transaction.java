package main_bank;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import dao_bank.Bank_dao;
import dto_Bank.Bank_dto;
import dto_Bank.User_dto;
@WebServlet("/tran")
public class Transaction extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String num=req.getParameter("num");
		long no=Long.parseLong(num);
		String amo=req.getParameter("amo");
		double amount=Double.parseDouble(amo);
		String pi=req.getParameter("pin");
		int pin=Integer.parseInt(pi);
		HttpSession hs=req.getSession();
		User_dto udto1=(User_dto) hs.getAttribute("udto");
		String email=udto1.getEmail();
		Bank_dao bdao=new Bank_dao();
		Bank_dto bdto=new Bank_dto(null, null, email,null , null,0 , pin, no,0 , amount,null);
		try {
			boolean b=bdao.transaction(bdto);
			if(b==true)
			{
				HttpSession session=req.getSession();
				session.setAttribute("amount",amo);
				String s="Transaction Successful";
				req.setAttribute("s", s);
				RequestDispatcher rd=req.getRequestDispatcher("transfer.jsp");
				rd.include(req, resp);
			}
			else
			{
				String s="Transaction cancelled wrong details";
				req.setAttribute("w", s);
				RequestDispatcher rd=req.getRequestDispatcher("transfer.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	  

	
	
	


}
