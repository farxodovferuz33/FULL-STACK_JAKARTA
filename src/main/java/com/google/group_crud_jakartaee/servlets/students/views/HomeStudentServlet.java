package com.google.group_crud_jakartaee.servlets.students.views;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.postgresql.Driver;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;

@WebServlet(name = "HomeStudentServlet", value = "/student")
public class HomeStudentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        try{
            DriverManager.registerDriver(new Driver());
            DriverManager.getConnection("jdbc:postgresql://localhost:5432/crud_with_jakarta?currentSchema=students")
        }catch (SQLException e){
            e.printStackTrace();
        }



        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/student/home.jsp");
        requestDispatcher.forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


    }
}
