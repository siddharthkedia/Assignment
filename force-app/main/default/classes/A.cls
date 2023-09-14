public class A {
	@future
    public static void f1(){
        system.debug('From class A..');
        System.enqueueJob(new B());
    }

}