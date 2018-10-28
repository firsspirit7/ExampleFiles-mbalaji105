trigger Ttriggeronaccount on Account (before insert) {
   List<contact> clst=new List<contact>();
       
    for(Account a:Trigger.new){
                    Contact c=new Contact();
                    for(integer i=0;i<5;i++){
                           c.accountid=a.id;
                           c.lastname=a.name;
                           insert c;
                                        
                    }
                    
    
            }
    
}