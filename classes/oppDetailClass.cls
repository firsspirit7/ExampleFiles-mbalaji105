public class oppDetailClass {

   


    public opportunity opportunity{get;set;}
    public string opid{get;set;}
    public String shid{get;set;}
    public oppDetailClass () {
    opportunity = new opportunity();
    }
    
    public list<opportunity> opList{get;set;} 
    public list<opportunity> rellst{get;set;}

    public PageReference Search() {
        if(opportunity.EndDate__c >= opportunity.StartDate__c){
        opList=[select name from Opportunity where stageName=:opportunity.stagename and CloseDate >:opportunity.StartDate__c and CloseDate <:opportunity.EndDate__c];
        }
        
        return null;
    }
    
   
 public PageReference relatedlist(){
        rellst=[select id,name from opportunity where id=:shid]; 
        return null;
      
    }

  }