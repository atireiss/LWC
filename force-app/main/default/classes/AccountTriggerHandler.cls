public class AccountTriggerHandler {
        
    public static void oppInsertHandler(List<Account> newAcc){
             List<Opportunity> newOpp = new List<Opportunity>();
           for(Account w : newAcc){                
             Opportunity opp = new Opportunity();
           	 opp.Name = w.Name + ' Opportunity';
             opp.StageName = 'Prospecting';
           	 opp.CloseDate = Date.Today().addDays(30);
           	 opp.AccountId = w.Id;
                     newOpp.add(opp);
            }
                 insert newOpp;
        
    }
       
 
    
    public static void oppUpdateHandler(List<Account> newAcc, List<Account> oldAcc){
        
        	List<Opportunity> newOpp = new List<Opportunity>();
        for(Account w : newAcc){
             if(w.Opportunities__c == 0){
            	Opportunity opp = new Opportunity();
            	opp.Name = w.Name + ' Opportunity';
            	opp.StageName = 'Prospecting';
            	opp.CloseDate = Date.Today().addDays(30);
            	opp.AccountId = w.Id;
            	newOpp.add(opp);
            }
            insert newOpp;
        }
    }
}