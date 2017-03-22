public with sharing class triggerHandler 
{
    
    public static void mainEntry(Schema.SObjectType triggerObject, Boolean IsBefore, Boolean IsAfter, 
        Boolean IsInsert,
        Boolean IsUpdate,
        Boolean IsDelete,
        Boolean IsUnDelete,
        Boolean IsExecuting,
        List<SObject> newList, Map<Id, SObject> newMap, List<SObject> oldList, Map<Id, SObject> oldMap)
    {

        System.debug('@@entering clsTriggerHandler for object: ' + triggerObject);
        if (Trigger.new != null)
        {
            System.debug('Trigger size: ' + System.Trigger.new.size());
        }


        if (triggerObject == Account.getSObjectType())
        {
            accountTriggerHandler.mainEntry(IsBefore,IsAfter, 
            IsInsert,
            IsUpdate,
            IsDelete,
            IsUnDelete,
            IsExecuting,
            (List<Account>)newList, (Map<Id,Account>)newMap, (List<Account>)oldList, (Map<Id,Account>)oldMap);
        }

 
    }
    

}