public class actaggregateresults{
    public Map<String,List<Account>> mapaccount{get;set;}
    Set<String> ratingset=new Set<String>();
    public actaggregateresults(){
            mapaccount=new Map<String,List<Account>>();
            for(Account actobj:[select id,name,rating from Account]){
                if(actobj.rating!=null){
                    ratingset.add(actobj.rating);
                    if(mapaccount.get(actobj.rating)!=null)
                        mapaccount.get(actobj.rating).add(actobj);
                    else
                        mapaccount.put(actobj.rating,new list<Account>{actobj});
                 }
            }
            for(String st:ratingset){
                if(mapaccount.get(st).size()<=1){
                        mapaccount.remove(st);
                }
            }
    }
    

}