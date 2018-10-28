public class ConUpdate {

    public PageReference updatecons() {
        update consforupdate;
        return null;
    }


List<account> consforupdate;

/*public conUpdate () {
consforupdate = [select name,industry,type from account];

}*/

public list<account> getconsforupdate () {
consforupdate = [select name,industry,type from account];
return consforupdate;
}

}