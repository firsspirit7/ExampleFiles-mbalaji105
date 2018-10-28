trigger TrigonOppLineItem on OpportunityLineItem (before insert) {
    
    for(OpportunityLineItem oli:Trigger.new){
        
        Opportunity o=[select stagename,name from Opportunity where id =:oli.opportunityid];
        
        
        if(o.StageName=='Closed Won'){
            oli.addError('Already this ==>'+o.name+'<==Opportunity is closed.you need to select another');
        }
        
        
    }
    

}