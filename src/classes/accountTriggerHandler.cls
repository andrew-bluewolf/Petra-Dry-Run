public with sharing class accountTriggerHandler 
{

    public accountTriggerHandler()
    {
        
    }
        
    public static void mainEntry(Boolean IsBefore, Boolean IsAfter, 
        Boolean IsInsert,
        Boolean IsUpdate,
        Boolean IsDelete,
        Boolean IsUnDelete,
        Boolean IsExecuting,
        List<Account> newList, Map<Id, Account> newMap, List<Account> oldList, Map<Id, Account> oldMap)
    {
        
        accountTriggerHandler handler = new accountTriggerHandler();
        
        if (IsBefore && IsUpdate)
        {
            handler.handleAccountBeforeUpdate(IsUpdate, newList, oldList);
        }

    }

    public void handleAccountBeforeUpdate(Boolean IsUpdate, List<Account> updatedAccounts, List<Account> oldAccounts)
    {

        List<Id> invIds = new List<Id>();
        Map<Id, Double> invMap = new Map<Id, Double>();

        Map<Id, Double> invOldMap = new Map<Id, Double>();

        for (Account a : updatedAccounts)
        {
        
            if (a.Outlet_Postcode__c.left(1) == '1')
                { a.Outlet_Territory__c = 'EMEA'; }
            
            else if (a.Outlet_Postcode__c.left(1) == '3')
                { a.Outlet_Territory__c = 'AMER'; }
            
            else if (a.Outlet_Postcode__c.left(1) == '5')
                { a.Outlet_Country__C = 'APAC'; }

        }

    }
    
}