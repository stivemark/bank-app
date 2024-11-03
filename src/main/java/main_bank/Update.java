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
@WebServlet("/upd")
public class Update extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession hs=req.getSession();
		User_dto  udto1=(User_dto)hs.getAttribute("udto");
		String email=udto1.getEmail();
		String firstname=req.getParameter("firstname");
		String lastname=req.getParameter("lastname");
		String pho=req.getParameter("phone");
		long phone=Long.parseLong(pho);
		String ag=req.getParameter("age");
		int age=Integer.parseInt(ag);
		String gender=req.getParameter("gender");
		String address=req.getParameter("address");
		User_dao udao=new User_dao();
		User_dto udto=new User_dto(firstname, lastname, email, gender, null, address, age, phone);
		try {
			int a=udao.update(udto);
			if(a>0)
			{
				String s="updated successfully";
				req.setAttribute("s", s);
				RequestDispatcher rd=req.getRequestDispatcher("update2.jsp");
				rd.include(req, resp);
			}
			else
			{
				String s1="Not completed please check details";
				req.setAttribute("s1", s1);
				RequestDispatcher rd=req.getRequestDispatcher("update.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}



