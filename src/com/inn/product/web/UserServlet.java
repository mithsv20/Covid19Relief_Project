package com.inn.product.web;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.inn.product.dao.UserDao;
import com.inn.product.model.User;

/**
 * ControllerServlet.java
 * This servlet acts as a page controller for the application, handling all
 * requests from the user.
 */

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
    
	private UserDao userDao;

    public void init() {
        userDao = new UserDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	System.out.println("inside User Servlet");
        String action = (String) request.getParameter("action");
        
        if(action == null ) {
        	action = (String)request.getAttribute("action");
        }
    	System.out.println("getting action: "+action);

        try {
            switch (action) {
                case "new":
                    showNewForm(request, response);
                    break;
                case "insert":
                    insertUser(request, response);
                    break;
                case "delete":
                    deleteUser(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "update":
                    updateUser(request, response);
                    break;
                case "list":
                	System.out.println("inside list option");
                	listUser(request, response);
                	break;
                default:
                    redirectLogin(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }
    
    private void redirectLogin(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException, ServletException {

    	request.getSession().removeAttribute("username");
    	request.getSession().removeAttribute("user");
    	
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        
        dispatcher.forward(request, response);
    }

    

    private void listUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < User > listUser = userDao.selectAllUsers();
        request.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    	response.sendRedirect("user-form.jsp");
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        User existingUser = userDao.selectUser(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        request.setAttribute("user", existingUser);
        dispatcher.forward(request, response);

    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String aadhar = request.getParameter("aadhar");
        String mobile = request.getParameter("mobile");
        String pAddress = request.getParameter("pAddress");
        String cAddress = request.getParameter("cAddress");
        String employer = request.getParameter("employer");
        User newUser = new User(name, email, aadhar, mobile, pAddress, cAddress, employer);
        userDao.insertUser(newUser);

        response.sendRedirect(request.getContextPath()+"/UserServlet?action=list");
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String aadhar = request.getParameter("aadhar");
        String mobile = request.getParameter("mobile");
        String pAddress = request.getParameter("pAddress");
        String cAddress = request.getParameter("cAddress");
        String employer = request.getParameter("employer");
        User newUser = new User(id, name, email, aadhar, mobile, pAddress, cAddress, employer);
        userDao.updateUser(newUser);
    
        response.sendRedirect(request.getContextPath()+"/UserServlet?action=list");
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));
        userDao.deleteUser(id);

        response.sendRedirect(request.getContextPath()+"/UserServlet?action=list");

    }
}