package model.view.client;

import model.view.common.PAuditeurView;

import oracle.jbo.client.remote.ViewUsageImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue Apr 27 09:38:04 EDT 2010
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class PAuditeurViewClient
  extends ViewUsageImpl
  implements PAuditeurView
{
  /**
   * This is the default constructor (do not remove).
   */
  public PAuditeurViewClient()
  {
  }

  public boolean connecter(String userName, String password)
  {
    Object _ret =
      getApplicationModuleProxy().riInvokeExportedMethod(this,"connecter",new String [] {"java.lang.String","java.lang.String"},new Object[] {userName, password});
    return ((Boolean)_ret).booleanValue();
  }
}
