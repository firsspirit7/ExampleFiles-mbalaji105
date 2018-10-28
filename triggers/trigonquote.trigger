trigger trigonquote on Quote(after insert, after update) {
Quote Q=trigger.new[0];
Opportunity opp=[Select id, amount from Opportunity where id=:q.opportunityid];
if(q.primary__c==true){
Opp.amount=Q.totalprice;
upsert opp;
}
}