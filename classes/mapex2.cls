public class mapex2
{
public static void fun()
{
  Map<Integer, String> m = new Map<Integer, String>{5 => 'jon', 6 => 'Quinton', 1 => 'Reid'};
  
  system.debug('map values'+m);
  system.debug('map keys'+m.keyset());
  system.debug('map values'+m.values());
  
  }
}