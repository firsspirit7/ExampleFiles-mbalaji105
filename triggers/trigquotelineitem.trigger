//Date:08-09-2011 Author:Balaji M
//This Trigger is used for updating the amount field value of opportunity with the quote totalprice when quotelineitem adding to the quote.
//if the quote is select as primary then only this trigger is fired 
trigger trigquotelineitem on QuoteLineItem (after insert,after update) {
        public static double total=0;
        QuoteLineItem qlir=new QuoteLineItem();
        Set<Id> qtids=new Set<Id>();//for collecting the quoteid of quoteline item
        List<opportunity> oppl=new List<opportunity>();//list of opportunity 
        List<Quotelineitem> qlil=new List<Quotelineitem>();
             for (QuoteLineItem qli : Trigger.new){
               qtids.add(qli.quoteid);
               qlil.add(qli);
               }
        //Here Map is used to hold query results organized by record ID
        Map<id, Quote> entries = new Map<id, Quote>( [select id,totalprice,opportunityid,primary__c from Quote where id in :qtids]);
        List<Quote> quotevalues=new List<Quote>();
        quotevalues=entries.values();//we add map values added to a list by using map method values()
        Opportunity opp=[select id,name,amount,StageName from opportunity where id =:quotevalues[0].opportunityid];
           
            for(integer i=0;i<qlil.size();i++){
                //this logic used for summing the quoteline item totalprice
                total=qlil[i].totalprice+total;
             
             }
                if(quotevalues[0].primary__c){
                 //This is used for pass the value of totalprice of primary quote to opportunity's amount field
                 opp.amount=quotevalues[0].totalprice+total;
                                
                }
                try{
                oppl.add(opp);
                update oppl;
                 }
                 catch(DMLException e){
                 qlir.addError(e.getmessage());
                 //System.debug(e.getmessage());
                 }
                 /*quotelineitem qli2=trigger.new[0];
                 if(qli2==null && quotevalues[0].primary__c==true){
                   opp.amount=quotevalues[0].totalprice;
                    update opp;
                     }
                */
                 
      }