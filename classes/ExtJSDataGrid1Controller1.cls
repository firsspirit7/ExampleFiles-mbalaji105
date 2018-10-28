public class ExtJSDataGrid1Controller1 {
public List<account> myContacts {
get {
if (myContacts == null) {
myContacts = [SELECT Id, Name,industry,Fax, phone FROM account];
}
return myContacts;
}
set;
}
}