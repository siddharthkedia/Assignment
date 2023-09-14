@isTest
public class Q7 {
    public static testmethod void main() {
        List<integer> obj = new List<integer>();
        obj.add(10);
        obj.add(30);
        obj.add(20);
        obj.add(5);
        system.debug(obj);
        obj.sort();
        system.debug(obj);
        obj.set(0, 100);
        system.debug(obj);
        system.debug('The count of elements in the list: ' + obj.size());
        obj.remove(2);
        system.debug(obj);    
        Boolean flag;
		Flag= obj.isempty();
		System.debug('the flag value ' + flag);
    }
}