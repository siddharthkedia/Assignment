@isTest
public class Q2 {
	public static testmethod void main(){
    	integer a= 10, b= 20;
        integer temp;
        temp = a;
        a = b;
        b = temp;
        system.debug('a = ' + a);
        system.debug('b = ' + b);
    }
}