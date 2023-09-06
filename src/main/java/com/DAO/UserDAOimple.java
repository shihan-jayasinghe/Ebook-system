package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.User;
public class UserDAOimple implements UserDAO
{
  private Connection conn;

   public UserDAOimple(Connection conn) {
	super();
	this.conn = conn;
   }

   @Override
   public boolean userRegister(User us) {
	
	boolean f=false;
	
	try 
	{
	  String sql="insert into user(name,email,phno,password)values(?,?,?,?);";
	  PreparedStatement pst=conn.prepareStatement(sql);
	  pst.setString(1,us.getName());
	  pst.setString(2,us.getEmail());
	  pst.setString(3,us.getPho());
	  pst.setString(4,us.getPassword());
	  
	  int i=pst.executeUpdate();
	  if(i==1)
	  {
		  f=true;
	  }
	}
	catch(Exception e)
	{
		e.printStackTrace();}
	return f;
}
  
   
  
}
