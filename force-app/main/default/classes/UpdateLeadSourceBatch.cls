public class UpdateLeadSourceBatch implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext context) {
        return Database.getQueryLocator([SELECT Id, LeadSource FROM Lead WHERE LeadSource = null]);
    }
    
    public void execute(Database.BatchableContext context, List<Lead> scope) {
        for (Lead lead : scope) {
            lead.LeadSource = 'Manual';
        }
        update scope;
    }
    
    public void finish(Database.BatchableContext context) {
        // Optional: Add any post-processing logic here
    }
    
}