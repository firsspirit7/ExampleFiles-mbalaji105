public class MyController1 {
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
        return 'MyController';
    }

    public Account getAccount() {
        if(account == null)
        account = [select id, name, accountnumber from Account];
               return account;
    }
}