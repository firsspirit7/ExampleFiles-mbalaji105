public class accountcontact {
public List<account> lstacc{set;get;}
public accountcontact(){
 lstacc=[select name ,(select email,phone,lastname from contacts) from account];
}

}