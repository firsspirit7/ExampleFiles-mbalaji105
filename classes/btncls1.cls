public class btncls1 {


public string name{get; set;}
  


    public PageReference submit() {
    pagereference ref= page.accountlist;
    System.debug('--------------->'+name);
        return ref;
    }
}