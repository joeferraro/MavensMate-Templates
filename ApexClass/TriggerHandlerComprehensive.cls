public with sharing class {{ api_name }} {
  // This should be used in conjunction with the ApexTriggerComprehensive.trigger template
  // The origin of this pattern is http://www.embracingthecloud.com/2010/07/08/ASimpleTriggerTemplateForSalesforce.aspx
  private boolean m_isExecuting = false;
  private integer BatchSize = 0;

  public {{ api_name }}(boolean isExecuting, integer size){
    m_isExecuting = isExecuting;
    BatchSize = size;
  }

  public void OnBeforeInsert({{ object_name }}[] new{{ object_name }}s){
    /*
    //Example usage
    for({{ object_name }} new{{ object_name }} : new{{ object_name }}s){
      if(new{{ object_name }}.AnnualRevenue == null){
        new{{ object_name }}.AnnualRevenue.addError('Missing annual revenue');
      }
    }
    */
  }

  public void OnAfterInsert({{ object_name }}[] new{{ object_name }}s){

  }

  @future public static void OnAfterInsertAsync(Set<ID> new{{ object_name }}IDs){
    //Example usage
    //List<{{ object_name }}> new{{ object_name }}s = [select Id, Name from {{ object_name }} where Id IN :new{{ object_name }}IDs];
  }

  public void OnBeforeUpdate({{ object_name }}[] old{{ object_name }}s, {{ object_name }}[] updated{{ object_name }}s, Map<ID, {{ object_name }}> {{ object_name }}Map){
    //Example Map usage
    //Map<ID, Contact> contacts = new Map<ID, Contact>( [select Id, FirstName, LastName, Email from Contact where {{ object_name }}Id IN :{{ object_name }}Map.keySet()] );
  }

  public void OnAfterUpdate({{ object_name }}[] old{{ object_name }}s, {{ object_name }}[] updated{{ object_name }}s, Map<ID, {{ object_name }}> {{ object_name }}Map){

  }

  @future public static void OnAfterUpdateAsync(Set<ID> updated{{ object_name }}IDs){
    //List<{{ object_name }}> updated{{ object_name }}s = [select Id, Name from {{ object_name }} where Id IN :updated{{ object_name }}IDs];
  }

  public void OnBeforeDelete({{ object_name }}[] {{ object_name }}sToDelete, Map<ID, {{ object_name }}> {{ object_name }}Map){

  }

  public void OnAfterDelete({{ object_name }}[] deleted{{ object_name }}s, Map<ID, {{ object_name }}> {{ object_name }}Map){

  }

  @future public static void OnAfterDeleteAsync(Set<ID> deleted{{ object_name }}IDs){

  }

  public void OnUndelete({{ object_name }}[] restored{{ object_name }}s){

  }

  public boolean IsTriggerContext{
    get{ return m_isExecuting;}
  }

  public boolean IsVisualforcePageContext{
    get{ return !IsTriggerContext;}
  }

  public boolean IsWebServiceContext{
    get{ return !IsTriggerContext;}
  }

  public boolean IsExecuteAnonymousContext{
    get{ return !IsTriggerContext;}
  }
}
