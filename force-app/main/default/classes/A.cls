public class A {

    @future
    public static void a1() {
        System.debug('I am From Class A');
        System.enqueueJob(new B());
    }
}