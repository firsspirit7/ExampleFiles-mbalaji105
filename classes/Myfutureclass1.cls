global class Myfutureclass1 {
@future
static void myMethod(String a, Integer i) {
System.debug('Method called with: ' + a + ' and ' + i);
//do callout, other long running code
}
}