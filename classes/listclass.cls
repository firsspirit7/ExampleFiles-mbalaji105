public class listclass{
	
	public listclass(){
		getlst();
	}
		public List<Account> lst;
	public List<Account> getlst(){
		lst=[select name from account];
		system.debug('----->'+lst);
		return lst;
	}
}