package main_bank;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao_bank.Bank_dao;
import dto_Bank.Bank_dto;

@WebServlet("/details")
public class AccountDetails extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pin1 = req.getParameter("pin");

        // Check if pin is provided
        if (pin1 != null && !pin1.isEmpty()) {
            try {
                int pin = Integer.parseInt(pin1); // Parse pin after null and empty check
                Bank_dao bao = new Bank_dao();
                Bank_dto bo = bao.details(pin);

                if (bo != null) { // Only forward if the account exists
                    req.setAttribute("bto1", bo);
                    RequestDispatcher rd = req.getRequestDispatcher("Accountdetails.jsp");
                    System.out.println("Successfully forwarded in AccountDetails servlet");
                    rd.forward(req, resp);
               }
                else {
                	 req.setAttribute("bto1", bo);
                     RequestDispatcher rd = req.getRequestDispatcher("Accountdetails.jsp");
                     System.out.println("Successfully not forwarded in AccountDetails servlet");
                     rd.forward(req, resp);
                }
//                	
//                	String s="Account not found, redirecting to Login page";
//                	req.setAttribute("s",s);
//                	//req.setAttribute("result", result);
//    				RequestDispatcher rd=req.getRequestDispatcher("detaisl.jsp");
//    				rd.include(req, resp);
//                    System.out.println("no account hear");
//                }
            } catch (NumberFormatException e) {
                System.out.println("Invalid pin format.");
                resp.sendRedirect("home.jsp"); // Redirect on error
            } catch (Exception e) {
                e.printStackTrace();
                resp.sendRedirect("home.jsp"); // Redirect on error
            }
        } else {
            System.out.println("No pin provided, redirecting to Login.");
            resp.sendRedirect("home.jsp");
        }
    }
}
