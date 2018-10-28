public with sharing class Myfutureclass {
@future
Public static void myMethod(){
//long-running Apex code
	for(integer i=1;i<=100;++i){
		i++;
		system.debug('Even:'+i);
	}
	
}
}