package com.so.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.so.dao.StudentDao;
import com.so.model.Student;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StudentDao studentdao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentController() {
        super();
        this.studentdao = new StudentDao();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		String useridStr = request.getParameter("userid");
		
		
		 * int userid = Integer.parseInt(useridStr);
		 * 
		 * User user = this.userDao.getUserById(userid); System.out.print(user);
		 */
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Student student = new Student();
		request.setCharacterEncoding("utf8");
		student.setId(request.getParameter("id"));
		student.setName(request.getParameter("name"));
		student.setSnum(request.getParameter("snum"));
		student.setYear(Integer.parseInt(request.getParameter("year")));
		student.setPass(request.getParameter("pass"));
		student.setEmail(request.getParameter("email"));
		 
		try {
			studentdao.addStudent(student);
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		request.getRequestDispatcher("student.jsp").forward(request, response);
	}

}
