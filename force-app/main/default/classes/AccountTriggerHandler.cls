/**
 * Created by e98696 on 6/29/2022.
 */

public with sharing class AccountTriggerHandler {
    public static void checkAddressCondition(List<Account> newAccountList){
        //for loop
        // check if postal code is not null
        // if not null and check box = true then update shipping address to match billing address

        for(Account a: newAccountList){
            if(a.BillingAddress != null && a.Match_Billing_Address__c == true){
                a.ShippingPostalCode = a.BillingPostalCode;
            }
        }

    }
}