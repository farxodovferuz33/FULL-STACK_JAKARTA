package com.google.group_crud_jakartaee.servlets.students.actions;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.postgresql.Driver;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


@WebServlet(name = "StudentAddServlet", value = "/student/add")
public class StudentAddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/student/create.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        int age = Integer.parseInt(req.getParameter("age"));
        int groupId = Integer.parseInt(req.getParameter("group_id"));

        try {
            DriverManager.registerDriver(new Driver());
            Connection connectionForStudent = DriverManager.getConnection("jdbc:postgresql://localhost:5432/crud_with_jakarta?currentSchema=students",
                    "postgres", "123"

            );

            Connection connectionForGroup = DriverManager.getConnection("jdbc:postgresql://localhost:5432/crud_with_jakarta?currentSchema=groups",
                    "postgres", "123"

            );
            PreparedStatement preparedStatementForStudent = connectionForStudent.prepareStatement("insert into students (fullName, age, groupId) values (?,?,?);");
            preparedStatementForStudent.setString(1, name);
            preparedStatementForStudent.setInt(2, age);
            preparedStatementForStudent.setInt(3, groupId);


            PreparedStatement preparedStatementForGroup = connectionForGroup.prepareStatement("update groups g set studentCount = studentCount+1 where g.id = ?");
            preparedStatementForGroup.setInt(1, groupId);


            preparedStatementForStudent.execute();
            preparedStatementForGroup.execute();

            resp.sendRedirect("/student");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
