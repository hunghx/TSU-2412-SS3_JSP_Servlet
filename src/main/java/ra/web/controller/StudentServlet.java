package ra.web.controller;

import ra.web.entity.Student;
import ra.web.service.IStudentService;
import ra.web.service.StudentServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "students", value = "/students")
public class StudentServlet extends HttpServlet {
    private IStudentService studentService = new StudentServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        //neeusu ko co action thì hiển thị danh sách sinh viên
        if (action == null || action.isEmpty()) {
            action = "list";
        }

        switch (action) {
            case "list":
                List<Student> students = studentService.getAllStudents();
                // gửi danh sách sinh viên đến trang JSP
                request.setAttribute("students", students);
                request.getRequestDispatcher("/view/list-student.jsp").forward(request, response);
                break;
            case "delete": {
                // Lấy ra id của sinh viên cần xóa
                int id = Integer.parseInt(request.getParameter("id"));
                // xử lí xoa
                studentService.deleteStudentById(id);
                // chuyển hướng về trang danh sách sinh viên
                response.sendRedirect("/students");
            }
            break;
            case "edit": {
                // Lấy ra id của sinh viên cần sửa
                int id = Integer.parseInt(request.getParameter("id"));
                // Lấy thông tin sinh viên từ service
                Student student = studentService.getStudentById(id);
                // Gửi thông tin sinh viên đến trang JSP để hiển thị
                request.setAttribute("student", student);
                request.getRequestDispatcher("/view/edit-student.jsp").forward(request, response);
            }
                break;
            default:
                // action ko hợp lệ
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("update".equals(action)) {
            // Lấy thông tin sinh viên từ form
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            boolean sex = Boolean.parseBoolean(request.getParameter("sex"));
            String address = request.getParameter("address");
            // Tạo đối tượng sinh viên
            Student student = new Student(id, name, email, phone,sex, address);
            studentService.updateStudent(student);
            // Chuyển hướng về trang danh sách sinh viên
            response.sendRedirect("/students");
        }
    }
}