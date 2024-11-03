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
import dto_Bank.AccountNumberGenarator;
import dto_Bank.Bank_dto;
import dto_Bank.User_dto;


@WebServlet("/createn")
public class Create_Account extends HttpServlet{ 
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pi=req.getParameter("pin");
		int pin=Integer.parseInt(pi);
		String bal=req.getParameter("bal");
		double balance=Double.parseDouble(bal);
		String acctype=req.getParameter("acctype");
		String typeOfAccount=req.getParameter("accountType");
		
		HttpSession hs=req.getSession();
		User_dto  udto1=(User_dto)hs.getAttribute("udto");
		String email=udto1.getEmail();
		long accountNumber = AccountNumberGenarator.generateAccountNumber();
		
		Bank_dao bdao=new Bank_dao();
		Bank_dto bdto=new Bank_dto(null, null, email, null, null, 0, pin, 0, accountNumber, balance,typeOfAccount);
		try {
			int a=bdao.register(bdto);
			if(a>0)
			{
				String s="Account created Successfully";
				req.setAttribute("s", s);
				long acno=bdto.getAccno();
				req.setAttribute("ac", acno);
				RequestDispatcher rd=req.getRequestDispatcher("bank_account.jsp");
				rd.include(req, resp);
			}
			else
			{
				String s="The pin is already exist";
				req.setAttribute("s1", s);
				RequestDispatcher rd=req.getRequestDispatcher("bank_account.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}










