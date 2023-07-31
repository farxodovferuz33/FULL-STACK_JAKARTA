package com.google.group_crud_jakartaee.servlets.groups.actions;

import com.google.group_crud_jakartaee.models.group.Groups;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


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
        String username = (String) req.getSession().getAttribute("username");

        if (!name.equals("")){
            EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("orm_example");
            EntityManager entityManager = entityManagerFactory.createEntityManager();
            entityManager.getTransaction().begin();
            var group = Groups.builder().name(name).createdBy(username).build();
            entityManager.persist(group);
            entityManager.getTransaction().commit();
            resp.sendRedirect("/group");
        }else {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/errors/cantBeBlank.jsp");
            requestDispatcher.forward(req, resp);
        }

//        if (!name.equals("")){
//            try {
//                DriverManager.registerDriver(new Driver());
//                Connection connection = DriverManager.getConnection(
//                        "jdbc:postgresql://localhost:5432/crud_with_jakarta?currentSchema=groups",
//                        "postgres",
//                        "123"
//                );
//
//                PreparedStatement preparedStatement = connection.prepareStatement("insert into groups (name, createdBy) values (?, ?)");
//                preparedStatement.setString(1, name);
//                preparedStatement.setString(2, username);
//                preparedStatement.execute();
//                resp.sendRedirect("/group");
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        }else {
//            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/cantBeBlank.jsp");
//            requestDispatcher.forward(req, resp);
//        }

    }
}
