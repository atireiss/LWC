public class OppTriggerHandler {
    
    
    public static void taskHandler(List<Opportunity> newOpp, Map<Id, Opportunity> oldOpp){
        List<Task> newTask = new List<Task>();
        //List<Opportunity> oldOppList = oldOpp.get(id).StageName;
               
        for(Opportunity opp: newOpp){            
            Opportunity oldOpportunity = oldOpp.get(opp.Id);
            
           if(opp.StageName == 'Closed Won' && oldOpportunity.StageName != opp.StageName){
                
                Task tas = new Task();
                tas.Subject = opp.Name + ' Follow up Task';
                tas.ActivityDate = opp.CloseDate.addDays(30);
                tas.WhatId = opp.Id;
                tas.OwnerId = opp.OwnerId;
                newTask.add(tas);
            }
            if(newTask.size() > 0){
                 insert newTask;
            }
           
        }
        
    }

}