public class Student_q3 {
    string name;
    integer st_id;
    public list<integer> obj=new list<integer>();

    public Student_q3(integer s_id, string s_name, integer sub1, integer sub2, integer sub3) {
        st_id = s_id;
        name = s_name;
        obj.add(sub1);
        obj.add(sub2);
        obj.add(sub3);
    }
    public integer totalMarks() {
        integer x=0;
        for (integer i=0; i<3; i++) 
            x+=obj[i];
        return x;
    }
    public decimal avgMarks() {
        decimal x=0; 
        for (integer i: obj) 
            x+=i;
        return x/3;
    }
}