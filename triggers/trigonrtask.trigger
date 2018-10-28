trigger trigonrtask on Task (before insert) {
for(Task tsk:Trigger.new){
        Opportunity o=[select stagename ,name from Opportunity where id =:tsk.whatid];
        if(o.StageName=='Closed Won'){
            tsk.addError('Already this ==>'+o.name+'<==Opportunity is closed.you need to select another');
        }
    }
}