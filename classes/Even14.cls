public with sharing class Even14 {
	public static void fun(){
	   Integer q;
	   Integer m;
	   for(Integer i=2;i<=100;i++)
	   {
	      q=i/2;
	      m=2*q;
	      if(i-m==0)
	      {
	        system.debug('even'+i);
	      }
	   
	   }
	}

}