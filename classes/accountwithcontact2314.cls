public class accountwithcontact2314{
public void cont(){

List<Account> acclst=[select id,name from account];
List<ID>  accids=new List<ID>();
for(Account accobj:acclst){
accids.add(accobj.id);
}


List<Opportunity> opplst=[select id,name,account.name  from Opportunity where accountid in :accids];
System.debug('opportunity LIst'+opplst);
List<Contact> contlst=[select name,account.name from contact where accountid in :accids];
system.debug('Contact Lists');
List<Task> tsklst=[select status,subject from task where whatid in:accids];


for(opportunity opp:opplst){
    system.debug('Account Name:=>'+opp.account.name+'\t\t opportunity Name:=>'+opp.name);
}



for(Contact ctobj:contlst){

    system.debug('Account Name:===>'+ctobj.account.name+'====Contact Name==>'+ctobj.name);


}

for(Task tskobj:tsklst){

    System.debug('Task List====>Task Status:'+tskobj.status+'Subject:==>'+tskobj.subject);

}


}


}