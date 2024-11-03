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
@WebServlet("/regis")
public class User_Register extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstname=req.getParameter("firstname");
		String lastname=req.getParameter("lastname");
		String email=req.getParameter("email");
		String pwd=req.getParameter("pwd");
		String address=req.getParameter("address");
		String ag=req.getParameter("age");
		int age=Integer.parseInt(ag);
		String pho=req.getParameter("phone");
		long phone=Long.parseLong(pho);
		String gender=req.getParameter("gender");
		User_dto udto=new User_dto(firstname, lastname, email, gender, pwd, address, age, phone);
		User_dao udao=new User_dao();
		try {
			int a=udao.register(udto);
			if(a>0)
			{
				HttpSession session=req.getSession();
				session.setAttribute("firstname",firstname);
				session.setAttribute("lastname", lastname);
				session.setAttribute("phonenumber", pho);
				session.setAttribute("age", ag);
				session.setAttribute("gender",gender);
				session.setAttribute("address", address);
				String s="Registration Successful";
				req.setAttribute("s", s);
				System.out.println("registration successfull..");
				RequestDispatcher rd=req.getRequestDispatcher("Register.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		HttpSession session1=req.getSession();
		session1.setAttribute("email", email);
		RequestDispatcher rd=req.getRequestDispatcher("Register.jsp");
		}
	/*protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    String firstname = req.getParameter("firstname");
	    String lastname = req.getParameter("lastname");
	    String email = req.getParameter("email");
	    String pwd = req.getParameter("pwd");
	    String address = req.getParameter("address");

	    String ag = req.getParameter("age");
	    int age = 0;
	    if (ag != null && !ag.isEmpty()) {
	        try {
	            age = Integer.parseInt(ag);
	        } catch (NumberFormatException e) {
	            // Handle invalid age input
	            e.printStackTrace();
	        }
	    }

	    String pho = req.getParameter("phonenumber");
	    long phone = 0L;
	    if (pho != null && !pho.isEmpty()) {
	        try {
	            phone = Long.parseLong(pho);
	        } catch (NumberFormatException e) {
	            // Handle invalid phone input
	            e.printStackTrace();
	        }
	    }

	    String gender = req.getParameter("gender");

	    User_dto udto = new User_dto(firstname, lastname, email, gender, pwd, address, age, phone);
	    User_dao udao = new User_dao();

	    try {
	        int a = udao.register(udto);
	        if (a > 0) {
	            String s = "Registration Successful";
	            req.setAttribute("s", s);
	            RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
	            rd.include(req, resp);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}*/

}

	
