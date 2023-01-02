/**
 * Created by rohit on 10/14/20.
 * Thunder changed it to Without sharing as Community user need access of the entitlement assignment
 */

public without sharing class CaseTriggerHandler {

    /* Method Name : CaseStatusSolved
     * Decription  : This method is use to Update Survey Eligble field to Current Time When Status is solve 
     *               and Case Origin is Chat otherwise add 1 hours to current time. 
	*/
    public void CaseStatusSolved(List<Case> list_cases,Map<Id,Case> map_OldCases){
        for(Case c : list_cases){
            if(c.Status == 'Solved' && 
               c.Status !=map_OldCases.get(c.id).Status){
               c.Last_Set_Solved__c = System.now();
            }
        }
    }
	
	/* Method Name : CaseStatusWaitingOnCustomer
     * Decription  : This method is use to Update Last_Time_Waiting_Status__c to current time if Case status = 'Waiting On Customer'. 
	*/
    public void CaseStatusWaitingOnCustomer(List<Case> list_cases ,Map<Id,Case> map_OldCases){
        for(Case c : list_cases){
            if(c.Status == 'Waiting On Customer' && c.Status != map_OldCases.get(c.Id).Status){
                c.Last_Set_Waiting_On_Customer__c = system.now();
            }
        }
    }
	
}