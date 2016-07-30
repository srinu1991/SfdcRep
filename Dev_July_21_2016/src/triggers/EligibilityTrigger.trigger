trigger EligibilityTrigger on StudentClassAssociation__c(before insert,before update) {
    for(StudentClassAssociation__c SCA : Trigger.New) {
        Student__c studentx = [select Country__c from Student__c where Id = :SCA.Student__c];
        Class__c classx = [select Non_Immigrant__c from Class__c where Id= :SCA.Class__c];
        if(Student__c.Country__c != null) {
            if(studentx.Country__c != 'USA' && classx.Non_Immigrant__c == false) {
                SCA.addError('NON-Immigratns are not allow to Enroll in this class');            
            }            
        }                      
    }
}