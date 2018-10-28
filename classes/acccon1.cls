public with sharing class acccon1 {
    List<account> acc;
        public acccon1(ApexPages.StandardController controller) {

    }
    public String accid{get; set;}
    
    public List<account> getlstaccounts()
    {
    acc=[Select id, name from account];
    return acc;
    }
    
    public pagereference ref()
    {
    pagereference ref= new pagereference('/'+accid);
    ref.setredirect(true);
    return ref;
    }
    

}