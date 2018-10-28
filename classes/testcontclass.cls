@istest
private class testcontclass{
static testMethod void myUnitTest() {
opportunity opp=new opportunity();
opp.name='balu';
opp.stagename='needanalysis';
opp.closedate=system.today();
insert opp;
contactcontroller  ctrl=new contactcontroller();
ctrl.getrecs();

}

}