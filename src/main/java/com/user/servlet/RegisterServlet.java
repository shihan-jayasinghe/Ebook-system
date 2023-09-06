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
          
          UserDAOimple ui=new UserDAOimple(DBconnect.getConn());
          boolean f=ui.userRegister(us);
          if(f)
          {
        	  System.out.println("user register success....");
          }
          else {
        	  System.out.println("user register failed!!");
          }
          
      }catch(Exception e)
      {
    	  e.printStackTrace();
      }
	}
  
}
