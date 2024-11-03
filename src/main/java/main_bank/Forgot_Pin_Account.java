package main_bank;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao_bank.Bank_dao;
import dao_bank.User_dao;
import dto_Bank.User_dto;
@WebServlet("/forgotpin")
public class Forgot_Pin_Account extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String phone1=req.getParameter("phoneNumber");
		long phoneNumber=Long.parseLong(phone1);
		String pin1=req.getParameter("pin");
		int pin=Integer.parseInt(pin1);
		//User_dto udto=new User_dto(null, null, email, null, pwd, null, 0, 0);
		Bank_dao udao=new Bank_dao();
		try {
			String result=udao.updatepin(phoneNumber,pin);
			if(result.equals("s"))
			{
				String a="password updated";
				req.setAttribute("a", a);
				RequestDispatcher rd=req.getRequestDispatcher("forgotPin.jsp");
				rd.include(req, resp);
			}
			else if(result.equals("s1"))
			{
				String a="Invalid phone";
				req.setAttribute("b", a);
				RequestDispatcher rd=req.getRequestDispatcher("forgotPin.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}




