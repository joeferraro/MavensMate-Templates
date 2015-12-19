trigger {{ api_name }} on {{ object_name }} (after delete, after insert, after undelete,
after update, before delete, before insert, before update) {
  // This should be used in conjunction with the TriggerHandlerComprehensive.cls template
  // The origin of this pattern is http://www.embracingthecloud.com/2010/07/08/ASimpleTriggerTemplateForSalesforce.aspx

  {{ trigger_handler_name }} handler = new {{ trigger_handler_name }}(Trigger.isExecuting, Trigger.size);

  if(Trigger.isInsert && Trigger.isBefore){
    handler.OnBeforeInsert(Trigger.new);
  }
  else if(Trigger.isInsert && Trigger.isAfter){
    handler.OnAfterInsert(Trigger.new);
    {{ trigger_handler_name }}.OnAfterInsertAsync(Trigger.newMap.keySet());
  }

  else if(Trigger.isUpdate && Trigger.isBefore){
    handler.OnBeforeUpdate(Trigger.old, Trigger.new, Trigger.newMap);
  }
  else if(Trigger.isUpdate && Trigger.isAfter){
    handler.OnAfterUpdate(Trigger.old, Trigger.new, Trigger.newMap);
    {{ trigger_handler_name }}.OnAfterUpdateAsync(Trigger.newMap.keySet());
  }

  else if(Trigger.isDelete && Trigger.isBefore){
    handler.OnBeforeDelete(Trigger.old, Trigger.oldMap);
  }
  else if(Trigger.isDelete && Trigger.isAfter){
    handler.OnAfterDelete(Trigger.old, Trigger.oldMap);
    {{ trigger_handler_name }}.OnAfterDeleteAsync(Trigger.oldMap.keySet());
  }

  else if(Trigger.isUnDelete){
    handler.OnUndelete(Trigger.new);
  }
}
