public class MyController
{  
public List<Contact> getMyContacts() 
{  

   return [SELECT Id, Name, Account.Name FROM Contact];  

 }  }