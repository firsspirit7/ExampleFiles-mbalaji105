trigger TrigonEvent on Event (before insert) {
    for(Event evt:Trigger.new){
        Opportunity o=[select stagename ,name from Opportunity where id =:evt.whatid];
        if(o.StageName=='Closed Won'){
            evt.addError('Already this ==>'+o.name+'<==Opportunity is closed.you need to select another');
        }
    }

}