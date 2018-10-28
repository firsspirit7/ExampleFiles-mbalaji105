public class MyController123 {

      private final Account account;

      public MyController123() {
            account = [select id, name, site from Account where id =
                       :ApexPages.currentPage().getParameters().get('id')];
      }

      public Account getAccount() {
            return account;
      }

      public PageReference save() {
            update account;
            return null;
      }
}