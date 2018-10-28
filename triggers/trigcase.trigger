trigger trigcase on Case (after update) {
Case c=trigger.new[0];
List<Case> lstcase = new List<Case>();
if(c.parentid==null && c.status=='closed'){
lstcase=[select id from case where parentid=:c.id];
}
list<case> lstToUpdate = new list<case>();
for(Case objCase:lstcase){
  objCase.status ='Closed'; 
  lstToUpdate.add(objCase); 
   
}
if(lstToUpdate.size()>0){
    update lstToUpdate;
}
}