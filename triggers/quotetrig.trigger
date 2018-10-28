//Date:08-09-2011 ,Author:Balaji M
//This trigger is used changing the quote as secondary when we select another quote as primary
trigger quotetrig on Quote (after insert, after update) {
if(trigger.isAfter){
        boolean isupdate=false;
        Quote obj=trigger.new[0];//trigger.new[0] is a collection to hold newly coming records
        Opportunity opp=[select id,amount from opportunity where  id=:obj.opportunityid];
        list<quote> lstquote = [select id ,primary__c from Quote where primary__c=true];
        
        if(lstquote.size()==0){
        obj.addError('You should select atleast one quote as primary to update amount of opportunity');
        }
        for(integer i=0;i<lstquote.size();i++){
            //Here we test the previous quote is selected  as primary or not
            if(lstquote[i].id !=obj.id && obj.primary__c ==true)
            {
                lstquote[i].primary__c = false;
                isupdate = true;
                
            }
                                    
        }
            if(isupdate)
           //updating the quote as primary 
            update lstquote;
     }
      

}