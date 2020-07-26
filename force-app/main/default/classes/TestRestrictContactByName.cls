@isTest
private class TestRestrictContactByName {
    @isTest static void nameIsInvalid() {
        List<Contact> contacts = RandomContactFactory.generateRandomContacts(1,'INVALIDNAME');  

        // perform test
        System.Test.startTest();
        Database.SaveResult result =  Database.insert(contacts[0], false);
        System.Test.stopTest();
        
        // verify
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "'+contacts[0].LastName+'" is not allowed for DML',
                             result.getErrors()[0].getMessage());
    }
    
    @isTest static void nameIsValid() {
        List<Contact> contacts = RandomContactFactory.generateRandomContacts(1,'Doe');  
        
        // perform test
        System.Test.startTest();
        Database.SaveResult result = Database.insert(contacts[0], false);
        System.Test.stopTest();
        
        // verify
        System.assert(result.isSuccess());
    }
}