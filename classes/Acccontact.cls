public class Acccontact {
public List<contact> lstacc{set;get;}
public Acccontact(){
lstacc=[select name ,account.name,account.industry from contact];

}

}