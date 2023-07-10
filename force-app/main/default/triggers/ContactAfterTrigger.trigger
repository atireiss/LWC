trigger ContactAfterTrigger on Contact (after insert, after update, after delete, after undelete) {
    
    if(Trigger.isAfter){
    if(Trigger.isInsert || Trigger.isUpdate || Trigger.isDelete || Trigger.isUndelete){
        
        ContactAfterTriggerHandler.triggerHandler(Trigger.new, Trigger.old);
        
        }
    }   
}