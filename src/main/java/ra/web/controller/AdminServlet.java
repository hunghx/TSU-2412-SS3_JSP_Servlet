package ra.web.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(name = "admin", value = "/admin") // annotation
public class AdminServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        System.out.println(" Gọi phương thức init của AdminServlet");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       // xử lí các request gửi theo form : post
        System.out.println(" Gọi phương thức doPost của AdminServlet");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       // xử lí các yêu câu theo get : thẻ a, form: get, gõ trực tiếp trên thanh url
        System.out.println("Gọi phương thuc doGet của AdminServlet");
    }

    @Override
    public void destroy() {
        System.out.println(" Gọi phương thức destroy của AdminServlet");
        // giải phóng tài nguyên, đóng kết nối, ...
    }
}
