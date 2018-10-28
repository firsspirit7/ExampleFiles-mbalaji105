trigger EventUpdateOpportunity on Event (after delete, after insert, after undelete, after update) {

    Set<ID> oppIds = new Set<ID>();
    //We only care about tasks linked to opportunities.
    String prefix = OpportunityActivityCount.oppPrefix;

    //Add any opportunity ids coming from the new data
    if (Trigger.new != null) {
        for (Event e : Trigger.new) {
            if (e.WhatId != null && String.valueOf(e.whatId).startsWith(prefix) ) {
                oppIds.add(e.whatId);
            }
        }
    }

    //Also add any opportunity ids coming from the old data (deletes, moving an activity from one opportunity to another)
    if (Trigger.old != null) {
        for (Event e : Trigger.old) {
            if (e.WhatId != null && String.valueOf(e.whatId).startsWith(prefix) ) {
                oppIds.add(e.whatId);
            }
        }
    }

    if (oppIds.size() > 0)
        OpportunityActivityCount.updateOpportunityCounts(oppIds);

}