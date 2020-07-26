@isTest
public class TestVerifyDate {
    @isTest static void isWithin30Days() {
        Date d1 = Date.today();
        Date d2 = d1.addDays(21);
        System.assertEquals(d2, VerifyDate.CheckDates(d1, d2));
    }
    
    @isTest static void testSetEndOfMonth() {
        Date d1 = Date.newInstance(2020, 1, 17);
        Date d2 = d1.addDays(40);
        Date d1Modified = Date.newInstance(2020, 1, 31);
        System.assertEquals(d1Modified, VerifyDate.CheckDates(d1, d2));
    }
}