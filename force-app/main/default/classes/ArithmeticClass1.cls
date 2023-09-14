public with sharing class ArithmeticClass1 {
    public integer num1{set; get;}
    public integer num2{set; get;}
    public integer res{set; get;}
    
    public PageReference sum(){
        res = num1 + num2;
        return null;
    }
    public PageReference diff(){
        res = num1 - num2;
        return null;
    }
    public PageReference prod(){
        res = num1 * num2;
        return null;
    }
    public PageReference div(){
        res = num1 / num2;
        return null;
    }
    public PageReference rem(){
        res = math.mod(num1, num2);
        return null;
    }
        
}