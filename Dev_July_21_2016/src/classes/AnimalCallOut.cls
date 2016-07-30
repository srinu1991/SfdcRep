public class AnimalCallOut {
    public static HttpResponse makeGetCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('http://api.fixer.io/latest');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        if(response.getStatusCode() == 200) {
            System.debug('Successfully you get data from your endpoint');
            //How to Parse Data using json
            map<String, Object> results = (map<String, Object>)JSON.deserializeUntyped(response.getBody());
           // System.debug(results.keySet());
            map<String, Object> m =(map<String,Object>)results.get('rates');
             
              // System.debug(m1);
                System.debug(results);
            System.debug(m);
            
                         
            Set<String> s1=  m.keySet();
            System.debug(s1);
            
           // List<Decimal> d = new List<Decimal>();
           
            for(String s:m.keySet()) {
                
                 System.debug(m.get(s));
                 } 
            
        }
        return response;
        
    } 
}