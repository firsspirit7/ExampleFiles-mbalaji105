public class Mapset
{
public static void fun()
{
Account a = new Account(name='Acme',
billingcity='New York');
Map<Integer, Account> map1 =
new Map<Integer, Account> {};
map1.put(1, a);
Map<Integer, Account> map2 =
map1.clone();
map1.get(1).billingcity =
'San Francisco';
System.assertEquals(map1.get(1).billingcity,
'San Francisco');
System.assertEquals(map2.get(1).billingcity,
'San Francisco');
System.debug('dddd'+map1);
}
}