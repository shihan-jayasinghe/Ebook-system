package com.user.servlet;

import java.io.IOException;

import com.DAO.UserDAOimple;
import com.DB.DBconnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
      try
      {
    	  String name=req.getParameter("fname");
          String email=req.getParameter("email");
          String pho=req.getParameter("pho");
          String psw=req.getParameter("password");
          String che=req.getParameter("check");
          
          //System.out.print(name+" "+email+" "+pho+" "+psw+" "+che);
          
          User us=new User();
          us.setName(name);
          us.setEmail(email);
          us.setPho(pho);
          us.setPassword(psw);
          
          HttpSession se=req.getSession();
          
          if(che!=null)
          {
        	  UserDAOimple ui=new UserDAOimple(DBconnect.getConn());
              boolean f=ui.userRegister(us);
              if(f)
              {
            	  //System.out.println("user register success....");
            	  se.setAttribute("succMsg", "Registration success..");
            	  resp.sendRedirect("register.jsp");
              }
              else {
            	  se.setAttribute("failMsg", "something went wrong!!");
            	  resp.sendRedirect("register.jsp");
              }
          }else {
        	  se.setAttribute("failMsg", "Please Agree to Terms and Conditions");
        	  resp.sendRedirect("register.jsp");
          }
          
      }catch(Exception e)
      {
    	  e.printStackTrace();
      }
	}
  
}
