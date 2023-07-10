trigger OpportunityTrigger on Opportunity (after update) {

    if(Trigger.isAfter && Trigger.isUpdate){
        
        OppTriggerHandler.taskHandler(Trigger.new, Trigger.oldMap);
        
    }
    
}