trigger TaskUpdateOpportunity on Task (after delete, after insert, after undelete, after update) {

    Set<ID> oppIds = new Set<ID>();
    //We only care about tasks linked to opportunities.
    String prefix =  OpportunityActivityCount.oppPrefix;

    //Add any opportunity ids coming from the new data
    if (Trigger.new != null) {
        for (Task t : Trigger.new) {
            if (t.WhatId != null && String.valueOf(t.whatId).startsWith(prefix) ) {
                oppIds.add(t.whatId);
            }
        }
    }

    //Also add any opportunity ids coming from the old data (deletes, moving an activity from one opportunity to another)
    if (Trigger.old != null) {
        for (Task t : Trigger.old) {
            if (t.WhatId != null && String.valueOf(t.whatId).startsWith(prefix) ) {
                oppIds.add(t.whatId);
            }
        }
    }

    if (oppIds.size() > 0)
        OpportunityActivityCount.updateOpportunityCounts(oppIds);

}