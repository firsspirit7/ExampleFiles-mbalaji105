//Date:05/09/2011 Author:Balaji M

//This trigger called qlitem is written on QuoteLineItem.It gets fired based on after insert or after update events
//This trigger is used for updating the amount field value of opportunity with the quote totalprice value 
//when that quote is selected as primary by the user
trigger qlitem on QuoteLineItem (after insert, after update) {

        //Here trigger.new[0] is a collection of newly inserted records of quotelineitems 

        List<opportunity> opl=new List<opportunity>();

        //Set<opportunity> opl1=new Set<opportunity>();

        public static double total=0;

        List<quotelineitem> qlil=new List<quotelineitem>();

        Quote Q=new Quote();

        Opportunity opp=new Opportunity();

        //quotelinieitem qli=new quotelineitem();

        for(quotelineitem qli:trigger.new){
            qlil.add(qli);
        //means to relate the quotelineitem with corresponding quote and getting id from qli
        Q= [Select id,opportunityid ,grandtotal,totalprice,primary__c from quote where id=:qli.quoteid];

        //here id=:q.OpportunityId is used for getting opportunityid from quote object
        //Here quote having master detail relationship with opportunity

        opp=[Select id, amount from Opportunity where id=:q.opportunityid];
        
            
        }
        for(integer i=0;i<qlil.size();i++){
             total=total+qlil[i].TotalPrice;
        }
        if(q.primary__c){
                //synquote.sync(q.id);
                //Opp.SyncedQuoteId = q.Id;
                //This logic is used for updating the amount of opportunity  with quote total price
                Opp.amount=q.totalprice+total ;
                
            }
            opl.add(opp);
            
            update opl;
        
        
        
}