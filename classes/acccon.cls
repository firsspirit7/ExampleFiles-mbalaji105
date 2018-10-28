public with sharing class acccon {
    List<account> acc;
        public acccon(ApexPages.StandardController controller) {


    }
    public String accid{get; set;}
    
    public List<account> getlstaccounts()
    {
    acc=[Select id, name from account];
    return 
    acc;
    
    }
    
    public pagereference ref()
    {
    pagereference ref= new pagereference('/'+accid);
    ref.setredirect(true);
    return ref;
    }
    


}