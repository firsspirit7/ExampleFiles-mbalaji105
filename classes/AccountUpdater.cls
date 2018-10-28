public class AccountUpdater {
  @Future(callout=true)
  public static void updateAccount(String id, String name) {
    HttpRequest req = new HttpRequest();
    //req.setClientCertificateName('TestCertificate');
    req.setEndpoint('http://cheenath.com/tutorial/sfdc/sample1/data.txt');
    req.setMethod('GET');
    Http http = new Http();
    HttpResponse res = http.send(req);
    if (res.getStatusCode() == 200) {
      Account acc = new Account(Id=id);
      acc.Description = res.getBody();
      update acc;
    }
 else {
      System.debug('Callout failed: ' + res);
    } 
  }
}