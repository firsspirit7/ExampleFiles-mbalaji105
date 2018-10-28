@istest
private class Tesclassonopp{
static testmethod void test(){
opportunity opp=new opportunity();
opp.stagename='closedwon';
insert opp;
//opportu ttsk=[select stagename from Opportunity where id =:tsk.whatid];
}
}