trigger AccountTrigger on Account (after insert, after update) {

    
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            AccountTriggerHandler.oppInsertHandler(Trigger.new);
        }
        if(Trigger.isUpdate){
            AccountTriggerHandler.oppUpdateHandler(Trigger.new, Trigger.old);
        }
    }                
}