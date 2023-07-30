package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.UserManager;
import com.model.Users;

/**
 * Servlet implementation class LoginService
 */

public class LoginService extends HttpServlet {
       
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
     * @see HttpServlet#HttpServlet()
     */
    public LoginService() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		
		Users U = new Users();
		U.setUsername(username);
		U.setPassword(password);
		
		UserManager UM = new UserManager();
		String res = "";
		
		try {
			res = UM.validateCredentials(U);
		}catch (Exception e) {
			res = e.getMessage();
		}

		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		pw.println(res);
		//System.out.println(res);
		if(res!="") {
			request.setAttribute("user", res);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request,response);
		}else {
			if(username.equals("bmtAdmin") && password.equals("123")) {
				//System.out.println("working");
				RequestDispatcher rd = request.getRequestDispatcher("adminpage.jsp");
				rd.forward(request,response);
			}else {
				//System.out.println("rwoosh");
				RequestDispatcher rd = request.getRequestDispatcher("errorpage.jsp");
				rd.forward(request,response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
