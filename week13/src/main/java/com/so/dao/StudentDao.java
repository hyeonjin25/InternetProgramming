package com.so.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.so.model.Student;
import com.so.util.DbUtil;

public class StudentDao {

	private Connection connection;

	public StudentDao() {
		connection = DbUtil.getConnection();
	}

	public void addStudent(Student student) {
		try {
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into students(id, name, snum, year, pass, email) values (?, ?, ?, ?, ?, ?)");
			// Parameters start with 1
			preparedStatement.setString(1, student.getId());
			preparedStatement.setString(2, student.getName());
			preparedStatement.setString(3, student.getSnum());
			preparedStatement.setInt(4, student.getYear());
			preparedStatement.setString(5, student.getPass());
			preparedStatement.setString(6, student.getEmail());
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public Student getStudentById(String studentId) {
		Student student = new Student();
		try {
			PreparedStatement preparedStatement = connection.
					prepareStatement("select * from students where id = ?");
			preparedStatement.setString(1, studentId);
			ResultSet rs = preparedStatement.executeQuery();
			
			if (rs.next()) {
				student.setId(rs.getString("id"));
				student.setName(rs.getString("name"));
				student.setSnum(rs.getString("snum"));
				student.setYear(rs.getInt("year"));
				student.setPass(rs.getString("pass"));
				student.setEmail(rs.getString("email"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return student;
	}
}
