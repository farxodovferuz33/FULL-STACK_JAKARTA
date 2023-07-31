package com.google.group_crud_jakartaee.servlets.students.views;

import com.google.group_crud_jakartaee.models.student.Students;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.postgresql.Driver;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

@WebServlet(name = "HomeStudentServlet", value = "/student")
public class HomeStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var studentList = new ArrayList<Students>();

        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/crud_with_jakarta?currentSchema=groups",
                    "postgres", "123");
            PreparedStatement preparedStatement = connection.prepareStatement("select * from students;");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                studentList.add(
                        Students.builder().id(resultSet.getInt("id")).
                                fullName(resultSet.getString("fullName")).
                                createdAt(resultSet.getString("createdAt")).
                                age(resultSet.getInt("age")).
                                groupID(resultSet.getInt("groupId")).
                                createdBy(resultSet.getString("createdBy")).
                                build()
                );
            }

            req.setAttribute("studentsList", studentList);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/student/home.jsp");
            requestDispatcher.forward(req, resp);

        } catch (SQLException e) {
            e.printStackTrace();
        }




    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }
}
