package com.google.group_crud_jakartaee.servlets.groups.actions;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.postgresql.Driver;

import java.io.IOException;
import java.sql.*;


@WebServlet(name = "GroupAddServlet", value = "/group/add")
public class GroupAddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/group/create_g.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");

        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/crud_with_jakarta?currentSchema=groups",
                    "postgres",
                    "123"
                    );

            PreparedStatement preparedStatement = connection.prepareStatement("insert into groups (name) values (?)");
            preparedStatement.setString(1, name);
            preparedStatement.execute();
            resp.sendRedirect("/mainn");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
