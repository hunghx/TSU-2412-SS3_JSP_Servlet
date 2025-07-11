package ra.web.service;

import ra.web.entity.Student;

import java.util.List;

public interface IStudentService {
    // lấy danh sach sinh viên
    List<Student> getAllStudents();
    void deleteStudentById(int id);
    Student getStudentById(int id);
    void updateStudent(Student student);
}
