/**
 * Created by e98696 on 6/29/2022.
 */

trigger AccountAddressTrigger on Account (before insert, before update) {
        AccountTriggerHandler.checkAddressCondition(Trigger.new);
}