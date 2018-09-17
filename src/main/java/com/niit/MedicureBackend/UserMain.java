package com.niit.MedicureBackend;


import java.util.List;
import java.util.Scanner;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.niit.config.DBConfig;
import com.niit.model.User;
import com.niit.userdao.UserDAO;

public class UserMain
{
	public void userOut()
	{
	 AbstractApplicationContext context = new AnnotationConfigApplicationContext(DBConfig.class);
   	 UserDAO userDAO = (UserDAO) context.getBean("userDAO");
   	 
       
       User user=new User();
       Scanner sc = new Scanner(System.in);
		
		System.out.println("Please select a category to do the manipulation");
		System.out.println("1.Add User /n 2.Delete User /n 3.Update User /n 4.View All Users /n 5.View Users by ID /n 6.View Users by Name");
		
		int choice = sc.nextInt();
		
		switch(choice){
		case 1:
			System.out.println("Please Enter the user details to enter");
			System.out.println("User ID:");

						
			user.setEmail(sc.next());
			System.out.println("Password");
			
			user.setPassword(sc.next());
			
			boolean result1 = userDAO.addUser(user);
			if(result1 == true)
			{
				System.out.println("Details has been added successfully");
			}
			break;
		case 2:
			
			List<User> userList1 = userDAO.findAllUsers();
			for(User user1 : userList1)
			{
				System.out.print("Email:"+user1.getEmail()+"");
				System.out.println("");

			}
			System.out.println("Please enter the UserId to be deleted from the above Table");
			int UserId = sc.nextInt();
			boolean result = userDAO.deleteUser(UserId);
			if(result == true)
			{
				System.out.println("The row has been successfuly deleted");
			}
			break;
		case 3:
			List<User> userList2 = userDAO.findAllUsers();
			for(User user2 : userList2)
			{
				System.out.print("Email:"+user2.getEmail()+"|");
				System.out.println("");

			}
						
			user.setEmail(sc.next());
			System.out.println("Password");
			
			user.setPassword(sc.next());
			
			boolean result2 = userDAO.updateUser(user);
			if(result2 == true)
			{
				System.out.println("Details has been updated successfully");
			}
			break;
			
		case 4:
			List<User> userList = userDAO.findAllUsers();
			for(User user3 : userList)
			{
				System.out.print("Email:"+user3.getEmail()+"|");
				System.out.println("");

			}
			break;
			
		case 5:
			System.out.println("Please enter the UserId to view User Details");
			int UserId3 = sc.nextInt();
			User user5 = userDAO.findUserById(UserId3);
			System.out.print("Email:"+user5.getEmail()+"|");
			break;
		case 6:
			System.out.println("Please enter the UserName to view User Details");
			String UserName = sc.next();
			User user4 = userDAO.findUserByName(UserName);
			System.out.print("Email:"+user4.getEmail()+"|");
			break;
			
	 default: System.out.println("Please enter a valid input");
			
		}
		
		
		
		context.close();
		sc.close();
		
	}
}
