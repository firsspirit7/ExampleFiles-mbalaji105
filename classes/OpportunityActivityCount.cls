public with sharing class OpportunityActivityCount {

    public static Boolean didRun = false;
    public static String oppPrefix =  Opportunity.sObjectType.getDescribe().getKeyPrefix();

    /*
    * Takes a set of opportunity IDs, queries those opportunities, and updates the activity count if appropriate
    */
    public static void updateOpportunityCounts(Set<ID> oppIds) {

        if (didRun == false) { //We only want this operation to run once per transaction.
            didRun = true;

            //Query all the opportunites, including the tasks child relationships
            List<Opportunity> opps = [SELECT ID, activity_count__c, (SELECT ID FROM Tasks), (SELECT ID FROM Events) FROM Opportunity WHERE ID IN :oppIds];
            List<Opportunity> updateOpps = new List<Opportunity>();

            for (Opportunity o : opps) {
                Integer count = o.tasks.size() + o.events.size();

                if (o.activity_count__c != count) {
                    o.activity_count__c = count;
                    updateOpps.add(o); //we're only doing updates to opps that have changed...no need to modify the others
                }
            }

            //Update the appropriate opportunities
            try {
                update updateOpps;
            } catch (DMLException e) {
               System.debug(e.getMessage());
                //This is controversial. Anything could happen when updating the opportunity..validation rule, security, etc. The key is we don't
                //want the event update to fail...so we put a try catch around the opp update to make sure we don't stop that from happening.
            }
        }
    }
    
}