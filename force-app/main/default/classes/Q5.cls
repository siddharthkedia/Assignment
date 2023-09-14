@isTest
public class Q5 {
    public static testmethod void main() {
        integer num1=10, num2=0, res;
        try {
            res=num1/num2;
        } 
        catch(exception e) {
            system.debug('Cannot divide by 0');
        }
        system.debug('The result is ' + res);
    }
}