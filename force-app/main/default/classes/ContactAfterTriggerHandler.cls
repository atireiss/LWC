public class ContactAfterTriggerHandler {

    public static void triggerHandler(List<Contact> newContacts, List<Contact> oldContacts){
        
		Set<Id> accountIds = new Set<Id>();
        
        if(newContacts != Null){
        for(Contact w : newContacts){  
            if(w.Active__c == True){
				accountIds.add(w.AccountId);                  
        }    
    }
}
        if(oldContacts != Null){
        for(Contact w : oldContacts){
            if(w.Active__c == True){
        	accountIds.add(w.AccountId);     
           }
        }
     }
        
        /*if(){ buraya update durumunda accId eski hal ve yeni hal esit olmayinca id setine eski hali de ekleyi yaz
            for(){
                
            }
        }*/
        List<Account> accountsToUpdate = new List<Account>();
		
        if(accountIds != null && !accountIds.isEmpty()){
        for(Id accId : accountIds){
            Account acc = new Account(Id = accId);
            Integer activeContacts = [SELECT COUNT() FROM Contact WHERE AccountId=:accountIds AND Active__c = true];
            acc.Active_Contacts__c = activeContacts;
            accountsToUpdate.add(acc);
        }
            update accountsToUpdate;
    }
        	
       

    }   
    
}