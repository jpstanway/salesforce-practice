@isTest
private class AccountTriggerTest {
    @isTest static void TestCreateAccountsInBulk() {
        // Create 200 new Accounts
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Challenge Account ' + i, BillingState='CA');
            accts.add(acct);
        }
        // Perform test
        Test.startTest();
        insert accts;
        Test.stopTest();
        // Verify all 200 inserted
        List<Account> verifyAccts = [SELECT Id FROM Account];
        System.assertEquals(200, verifyAccts.size());
        // Also verify BillingState and ShippingState are the same
        for (Account a : verifyAccts) {
            System.assertEquals('CA', a.ShippingState);
        }
    }
}