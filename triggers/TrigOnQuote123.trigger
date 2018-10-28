trigger TrigOnQuote123 on Quote (after insert, after update) {


for(Quote q:trigger.new){
    opportunity opp=[select id from opportunity where id=:q.OpportunityId];
    List<Quote> qt1=[select primary__c from quote where opportunityid=:opp.id and primary__c=true];
    
    if(q.Primary__c){
        if(qt1.size()>0){
            for(Integer i=0;i<qt1.size();i++){
                qt1[i].Primary__c=false;
            }
            
        }
    }
}
}