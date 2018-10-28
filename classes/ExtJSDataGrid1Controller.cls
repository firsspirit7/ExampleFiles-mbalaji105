public class ExtJSDataGrid1Controller {
public list<account> getmycontacts(){

    list<account> lstacc=[select id,name,industry,type from account];
    return lstacc;
    
}
}