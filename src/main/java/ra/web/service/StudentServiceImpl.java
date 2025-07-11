package ra.web.service;

import ra.web.entity.Student;

import java.util.ArrayList;
import java.util.List;

public class StudentServiceImpl implements IStudentService{
    private static List<Student> students;
    static{
        students = new ArrayList<>();
        students.add(new Student(1, "Nguyen Van A", "a@gmail.com", "0123456789", true, "Hanoi"));
        students.add(new Student(2, "Nguyen Van B", "b@gmail.com", "0987654321", false, "HCM"));
        students.add(new Student(3, "Nguyen Van C", "c@gmail.com", "1234567890", true, "Da Nang"));
    }
    @Override
    public List<Student> getAllStudents() {
        return students;
    }

    @Override
    public Student getStudentById(int id) {
        return students.stream()
                .filter(student -> student.getId() == id)
                .findFirst()
                .orElse(null);
    }

    @Override
    public void deleteStudentById(int id) {
//       students.removeIf(student -> student.getId() == id);
        Student s = getStudentById(id);
        if (s!= null) {
            students.remove(s);
        }
    }

    @Override
    public void updateStudent(Student student) {
        int index = students.indexOf(getStudentById(student.getId()));
        if (index != -1) {
            students.set(index, student);
        }
    }
}
