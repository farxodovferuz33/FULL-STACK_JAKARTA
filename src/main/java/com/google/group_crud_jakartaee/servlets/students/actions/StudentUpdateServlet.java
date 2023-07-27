package com.google.group_crud_jakartaee.servlets.students.actions;

import com.google.group_crud_jakartaee.models.student.Student;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.postgresql.Driver;

import java.io.IOException;
import java.sql.*;

@WebServlet(name = "StudentUpdateServlet", value = "/student/update/*")
public class StudentUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/crud_with_jakarta?currentSchema=students",
                    "postgres",
                    "123");
            PreparedStatement preparedStatement = connection.prepareStatement("select * from students where id = ?;");
            preparedStatement.setInt(1, Integer.parseInt(req.getPathInfo().substring(1)));
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                req.setAttribute("st",
                        Student.builder().id(resultSet.getInt("id")).
                                createdAt(resultSet.getString("createdAt")).
                                age(resultSet.getInt("age")).
                                groupID(resultSet.getInt("groupID")).
                                fullName(resultSet.getString("fullName")).
                                build()
                );
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/student/update.jsp");
                requestDispatcher.forward(req, resp);
            }
        } catch (SQLException e) {

            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        int age = Integer.parseInt(req.getParameter("age"));
        int groupId = Integer.parseInt(req.getParameter("group_id"));
        int pathInfo = Integer.parseInt(req.getPathInfo().substring(1));


        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/crud_with_jakarta?currentSchema=students",
                    "postgres",
                    "123");
            PreparedStatement preparedStatement = connection.prepareStatement("update students set fullName = ?, age =? , groupID =?  where id = ?;");
            preparedStatement.setString(1, name);
            preparedStatement.setInt(2, age);
            preparedStatement.setInt(3, groupId);
            preparedStatement.setInt(4, pathInfo);
            preparedStatement.execute();
            resp.sendRedirect("/student");
        } catch (SQLException e) {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/f_key_error_page.jsp");
            requestDispatcher.forward(req, resp);
        }
    }
}
