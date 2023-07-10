public class CaseTriggerHandler {

    public static void caseInsertHandler(List<Case> mainCase){
        
        
        List<Case> parentCase = [SELECT Id, Origin FROM Case WHERE Origin =: mainCase[0].Origin AND AccountId =: mainCase[0].AccountId ORDER BY CreatedDate DESC LIMIT 1];
        
        for(Case ca: mainCase){
            if(parentCase.size() > 0){
        	
             ca.ParentId = parentCase[0].Id;
			 
        }            
      }   
              		       
    }    
  }

// bu trigger sadece tekli case yuklemelerinde calisiyor, bulk case execute ettiginde 200 case'i ayni anda yukledigi icin en son elle insert edilen parentId'yi yukledi