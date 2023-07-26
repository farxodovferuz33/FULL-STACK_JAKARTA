package com.google.group_crud_jakartaee.servlets.groups.actions;

import com.google.group_crud_jakartaee.models.group.Group;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.postgresql.Driver;

import java.io.IOException;
import java.sql.*;

@WebServlet(name = "GroupUpdateServlet", value = "/group/update/*")
public class GroupUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pathInfo = Integer.parseInt(req.getPathInfo().substring(1));

        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/crud_with_jakarta?currentSchema=groups",
                    "postgres",
                    "123");
            PreparedStatement preparedStatement = connection.prepareStatement("select * from groups where id = ?;");
            preparedStatement.setInt(1, pathInfo);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()){
                var gr = Group.builder().id(resultSet.getInt("id")).
                        createdAt(resultSet.getString("createdAt")).
                        studentCount(resultSet.getInt("studentCount")).
                        name(resultSet.getString("name")).build();
                req.setAttribute("gr", gr);
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/group/update_g.jsp");
                requestDispatcher.forward(req, resp);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        int pathInfo = Integer.parseInt(req.getPathInfo().substring(1));
        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/crud_with_jakarta?currentSchema=groups",
                    "postgres",
                    "123");
            PreparedStatement preparedStatement = connection.prepareStatement("update groups set name = ? where id = ?;");
            preparedStatement.setString(1, name);
            preparedStatement.setInt(2, pathInfo);
            preparedStatement.execute();
            resp.sendRedirect("/group");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
