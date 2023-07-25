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

@WebServlet(name = "GroupUpdateServlet", value = "/group/update/*")
public class GroupUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {




        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/group/update_g.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
