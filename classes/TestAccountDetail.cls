@isTest
private class  TestAccountDetail {

static testMethod void accTest() {
account a=new account(name='balaji');
insert a;
ApexPages.StandardController sc = new ApexPages.StandardController(a);
//accountdetail ac=new accountdetail(sc);
PageReference pageRef = new PageReference('/' + a.ID);
Test.setCurrentPage(pageRef);
//ac.detail();
}

}