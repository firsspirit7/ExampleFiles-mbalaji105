@istest
private class testdemoclass{
static testMethod void myUnitTest() {
Depart_ment__c dept=new Depart_ment__c();
dept.Depart_name__c  ='marketing';
insert dept;

Emp_Details__c edet=new Emp_Details__c();
edet.name='balaji';
edet.email__c='mbalaji105@gmail.com';
edet.role__c='teamlead';
edet.password__c='djsflk';
edet.Depart_ment__c=dept.id;
insert edet;

 Demo d = new Demo ();
 
 d.getstatus();
 d.geteid();
 d.dept = dept.id;
 d.emps = edet.id;
 d.get();
 d.getdeptname();
 d.getempname();
}

}