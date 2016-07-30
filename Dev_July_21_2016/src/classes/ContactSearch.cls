public class ContactSearch {
 
    public static List<Contact> searchForContacts(String s1,String s2) {
    
    List<Contact> searchList = new List<Contact>();
    
     searchList=[Select ID,Name from Contact where LastName = : s1 AND MailingPostalCode = :s2];
      
    
          return searchList;
    
    
    
    
    
    }



}