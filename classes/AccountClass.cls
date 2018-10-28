public with sharing class AccountClass {
 public List<Account> m1(String name){
 	List<Contact> con=new List<Contact>();
 	for(Integer i=0;i<=100;i++){
 		con[0].lastname=name+':'+i;
 	    
 	}
 	insert con;
 	return null;
 }
 
}