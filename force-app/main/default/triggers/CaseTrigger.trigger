trigger CaseTrigger on Case (before insert) {
    CaseTriggerHandler.caseInsertHandler(Trigger.new);
}