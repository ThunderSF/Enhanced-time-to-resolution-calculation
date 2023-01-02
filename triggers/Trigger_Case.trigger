trigger Trigger_Case on Case (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    
    if( Trigger.isBefore ) {
        if( Trigger.isInsert ){
            CaseTriggerHandler.CaseStatusWaitingOnCustomer((List<Case>)trigger.new,(Map<Id,Case>)trigger.oldMap);
			CaseTriggerHandler.CaseStatusSolved((List<Case>)trigger.new,(Map<Id,Case>)trigger.oldMap);
        }
        if( Trigger.isUpdate){
			CaseTriggerHandler.CaseStatusWaitingOnCustomer((List<Case>)trigger.new,(Map<Id,Case>)trigger.oldMap);
            CaseTriggerHandler.CaseStatusSolved((List<Case>)trigger.new,(Map<Id,Case>)trigger.oldMap);
        }
    }
}