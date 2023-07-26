package com.google.group_crud_jakartaee.servlets.groups.view;

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
import java.time.LocalDateTime;
import java.util.ArrayList;

@WebServlet(name = "HomeServlet", value = "/group")
public class HomeGroupServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var groupsList = new ArrayList<Group>();

        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/crud_with_jakarta?currentSchema=groups",
                    "postgres",
                    "123");
            PreparedStatement preparedStatement = connection.prepareStatement("select * from groups");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                var groupObj = Group.builder().id(resultSet.getInt("id"))
                        .createdAt(resultSet.getString("createdAt"))
                        .name(resultSet.getString("name"))
                        .studentCount(resultSet.getInt("studentCount")).build();
                groupsList.add(groupObj);
            }
            req.setAttribute("groupsList", groupsList);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/group/home_g.jsp");
            requestDispatcher.forward(req, resp);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }
}
