public class Myset
{
public void fun()
{
Set<String> s = new Set<String>{'a','b', 'c'};

s.add('c');
System.debug(s);
System.assert(s.contains('b'));

System.assert(s.size() == 3);
}
}