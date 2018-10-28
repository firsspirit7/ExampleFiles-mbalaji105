public class MyController1234 {
Account account;
public PageReference save() {
try{
update account;
}
catch(DmlException ex){
ApexPages.addMessages(ex);
}
return null;
}
public String getName() {
return 'MyController1234';
}
public Account getAccount() {
if(account == null)
account = [select id, name from Account
where id = :ApexPages.currentPage().getParameters().get('id')];
return account;
}
}