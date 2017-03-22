trigger account_Trigger on Account (after delete, after insert, after undelete, 
after update, before delete, before insert, before update) 
{
    triggerHandler.mainEntry(Account.getSObjectType(), Trigger.IsBefore, Trigger.IsAfter,
        Trigger.IsInsert,
        Trigger.IsUpdate,
        Trigger.IsDelete,
        Trigger.IsUnDelete,
        Trigger.IsExecuting,
        Trigger.new, Trigger.newmap, 
        Trigger.old,Trigger.oldmap);
}