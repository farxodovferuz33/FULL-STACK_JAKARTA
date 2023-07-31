package com.google.group_crud_jakartaee.servlets.students.actions;

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

@WebServlet(name = "StudentDeleteServlet", value = "/student/delete/*")
public class StudentDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pathInfo = Integer.parseInt(req.getPathInfo().substring(1));

        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/crud_with_jakarta?currentSchema=students",
                    "postgres",
                    "123"
            );
            PreparedStatement preparedStatement = connection.prepareStatement("select * from students where id = ?");
            preparedStatement.setInt(1, pathInfo);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                var st = Students.builder().id(resultSet.getInt("id")).
                        age(resultSet.getInt("age")).
                        createdAt(resultSet.getString("createdAt")).
                        groupID(resultSet.getInt("groupId")).
                        fullName(resultSet.getString("fullName"))
                        .build();
                req.setAttribute("st", st);
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/student/delete.jsp");
                requestDispatcher.forward(req, resp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pathInfo = Integer.parseInt(req.getPathInfo().substring(1));
        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/crud_with_jakarta?currentSchema=students",
                    "postgres",
                    "123"
            );
            PreparedStatement preparedStatement = connection.prepareStatement("delete from students s where s.id = ? returning s.groupID;");
            preparedStatement.setInt(1, pathInfo);


            Connection connectionForGroup = DriverManager.getConnection("jdbc:postgresql://localhost:5432/crud_with_jakarta?currentSchema=groups",
                    "postgres", "123"

            );

            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                System.out.println(resultSet.getInt("groupID"));
                PreparedStatement preparedStatementForGroup = connectionForGroup.prepareStatement("update groups g set studentCount = studentCount-1 where g.id = ?");
                preparedStatementForGroup.setInt(1, resultSet.getInt("groupID"));
                preparedStatementForGroup.execute();
            }

            resp.sendRedirect("/student");
        } catch (SQLException e) {

            throw new RuntimeException(e);
        }
    }
}
