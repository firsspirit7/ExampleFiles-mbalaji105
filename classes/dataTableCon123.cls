public class dataTableCon123
 {

            

    List<Account> accounts;



    public List<Account> getAccounts() {

        if(accounts == null) accounts = [select name, owner.name from account limit 10];

        return accounts;

    }

}