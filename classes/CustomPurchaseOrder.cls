public  class CustomPurchaseOrder implements PurchaseOrder {
	 static final double DEFAULT_DISCOUNT = .05;

      public	enum Season {WINTER, SPRING, SUMMER, AUTUMN} 
  public Double discount() {

    //return DEFAULT_DISCOUNT;
    System.debug('Discount:=='+DEFAULT_DISCOUNT);
    
   return null;
  }
	
	public void dset(){
		DateTime dt=System.now();
		String s1='balaji'.toUpperCase();
		Decimal d=Decimal.valueOf('123');
		Set<String> s = new Set<String>{'a','b', 'c'};
	   	s.add('c');

		System.assert(s.contains('b'));

		System.assert(s.size() == 3);
    	System.debug('========'+s+'Date:'+dt+'SUpper'+s1+'Decimal'+d);
    	List<Integer> myList = new List<Integer>();

		myList.add(47);

		myList.get(0);
		System.debug('ListElement'+myList);
		Map<ID,Contact> m = new Map<ID, Contact>([select id, lastname from contact]);
		System.debug('ContactMap:==='+m);
	    Season s2 = Season.AUTUMN;
		System.debug('Season:==='+s2);
    	 
	}

}