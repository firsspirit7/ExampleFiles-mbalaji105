public class CommandButtonApexParam {

    
    public list<Account> lstAccount{get;set;}
    
    public String rep2{get;set;}
    public PageReference updateLeadOwner() 
    {
        new account().addError('*****'+ rep2);
        return null;
    } 
    
    
    public void showRecords(){
        lstAccount = new List<Account>([select id,name,phone from account]);

    }
    

}