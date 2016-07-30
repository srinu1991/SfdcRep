trigger  AmountUpdate on Summary__c (before Insert) {
 
     if(Trigger.isInsert){
     
         for(Summary__c Name:Trigger.new){
         
         
             if(Name.US_Dollars__c != Null){
             
               
                 // Summary__C summ=[select Id,INR__c,Pounds__c,China__c,US_Dollars__c from Summary__c where id=:Summary__c.US_Dollars__c]; 
                  
                   HttpRequest req = new HttpRequest();
                    req.setEndpoint('http://celebal.com:15000/conversion/gbp');

                      req.setMethod('GET');
                      Http http = new Http();

                HTTPResponse res = http.send(req);
                 
                
                
                 Integer myInt = Integer.valueOf('res');
              
                  
                
                  
                  Name.INR__c = Name.US_Dollars__c * myInt ;
                   Name.China__c = Name.US_Dollars__c * 5;
                   Name.Pounds__c = Name.US_Dollars__c * 2;
                  
                  
             
             }
         }
         
     
     
     }
     




}