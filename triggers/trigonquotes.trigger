trigger trigonquotes on Quote (before insert) {
for(Quote qut:Trigger.new){
        Opportunity o=[select stagename,name from Opportunity where id =:qut.Opportunityid];
        if(o.StageName=='Closed Won'){
            qut.addError('Already this ==>'+o.name+'<==Opportunity is closed.you need to select another');
        }
    }

}