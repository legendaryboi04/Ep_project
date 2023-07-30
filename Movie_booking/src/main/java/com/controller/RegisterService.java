package com.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterService
 */


@WebServlet("/RegisterService")
public class RegisterService extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterService() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

    @Override   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get the form data from the request.
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Validate the form data.
        if (username == null || username.isEmpty()) {
            response.sendRedirect("registration.jsp?error=Please enter a username.");
            return;
        }

        if (email == null || email.isEmpty()) {
            response.sendRedirect("registration.jsp?error=Please enter an email address.");
            return;
        }

        if (password == null || password.isEmpty()) {
            response.sendRedirect("registration.jsp?error=Please enter a password.");
            return;
        }

        if (confirmPassword == null || confirmPassword.isEmpty()) {
            response.sendRedirect("registration.jsp?error=Please confirm your password.");
            return;
        }

        if (!password.equals(confirmPassword)) {
            response.sendRedirect("registration.jsp?error=The passwords do not match.");
            return;
        }
        
        String sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookmyticket", "root", "Tarun@143");
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, username);
            statement.setString(2, email);
            statement.setString(3, password);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        // Process the form data.
        // TODO: Save the form data to the database.

        // Redirect the user to the success page.
        response.sendRedirect("success.jsp");
    }
}
