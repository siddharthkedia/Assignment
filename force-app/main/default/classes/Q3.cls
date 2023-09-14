@isTest
public class Q3 {
    public static testmethod void main() {
        Student_q3 stud1 = new Student_q3(101, 'Gunoo', 80, 70, 90);
        system.debug('The total marks of student 1: ' + stud1.totalMarks());
        system.debug('The total marks of student 1:' + stud1.avgMarks());
    }
}