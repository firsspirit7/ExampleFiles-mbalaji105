trigger counting on Contact (after insert,after delete,after update) {
map<id,list<contact>> mapcontactcount=new map<id,list<contact>>();
map<id,Account> accupdate = new map<id,account>();
for(Account acc:[select id,(select id,name from contacts) from account]){

        mapcontactcount.put(acc.id,acc.contacts);
        accupdate .put(acc.id,acc);


}

for(id c:mapcontactcount.keyset()){


    accupdate.get(c).NoofContacts__c=0;
    if(accupdate.get(c)!=null){
         system.debug('mapcontactcount.get(c).size()-->'+mapcontactcount.get(c).size());

        accupdate.get(c).NoofContacts__c=mapcontactcount.get(c).size();
      }


}
update accupdate.values();

}