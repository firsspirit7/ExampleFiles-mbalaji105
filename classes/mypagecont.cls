public class mypagecont {

    public list<account> accounts;
    public list<account> getaccounts()
    {
       if(accounts==null)
         accounts=[select name from account limit 10];
         return accounts;
    }

   
    
    public String name1 { get; set; }
    public mypagecont()
    {
      this.name1='balaji';
    
    }
}