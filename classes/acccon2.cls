public with sharing class acccon2 {
    List<SearchObject__c> acc;
        public acccon2(ApexPages.StandardController controller) {

    }
    public String accid{get; set;}
    
    public List<SearchObject__c> getlstaccounts()
    {
    acc=[Select id,name, Search__c from SearchObject__c];
    return acc;
    }
    
    public pagereference ref()
    {
    pagereference ref= new pagereference('/'+accid);
    ref.setredirect(true);
    return ref;
    }
    

}