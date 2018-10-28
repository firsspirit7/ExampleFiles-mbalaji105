public class Baluset1
{
public static void fun1()
{
Account [] accts = [select ID,name from Account];
for(Account  s:accts)
{
System.debug('accountid'+s);
}
System.debug('accountid'+accts[0]);
}
}