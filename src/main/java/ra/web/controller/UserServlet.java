package ra.web.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "user", value = "/user")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        System.out.println("Name: " + name + ", Age: " + age);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        System.out.println("Name: " + name + ", Age: " + age);
        // thm thuộc tính vào request để sử dụng trong JSP
        request.setAttribute("name", name);
        request.setAttribute("age", age);
        request.setAttribute("list", Arrays.asList("Java", "Python", "JavaScript"));
        // sử dụng đô tươg RequestDispatcher để chuyển tiếp yêu cầu
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/result.jsp");
        dispatcher.forward(request, response);
    }
}