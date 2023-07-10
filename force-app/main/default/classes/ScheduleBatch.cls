public class ScheduleBatch implements Schedulable{
    
    public static void execute(SchedulableContext sc){
        
     
     UpdateLeadSourceBatch ulsb = new UpdateLeadSourceBatch(); // Your batch class
       database.executeBatch(ulsb);
        
        //System.schedule('Update Lead Source Batch', '0 0 23 * * ?', new ScheduleBatch());
		//UpdateLeadSourceBatch ulsb = new UpdateLeadSourceBatch();
		//Database.executeBatch(ulsb);



     
	}
 }