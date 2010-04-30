package model.view;

import model.view.common.PAuditeurView;

import oracle.jbo.server.ViewObjectImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Apr 23 14:36:21 EDT 2010
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class PAuditeurViewImpl extends ViewObjectImpl
  implements PAuditeurView
{
    /**
     * This is the default constructor (do not remove).
     */
    public PAuditeurViewImpl()
    {
    }

    public boolean connecter(String userName, String password)
    {
        System.out.println("Methode connecter avec " + userName + " et " + password);
        setuserName(userName);
        setpassWord(password);
        executeQuery();        
        return (getRowCount()>0);
    }

    /**
     * Returns the bind variable value for userName.
     * @return bind variable value for userName
     */
    public String getuserName()
    {
        return (String) getNamedWhereClauseParam("userName");
    }

    /**
     * Sets <code>value</code> for bind variable userName.
     * @param value value to bind as userName
     */
    public void setuserName(String value)
    {
        setNamedWhereClauseParam("userName", value);
    }

    /**
     * Returns the bind variable value for passWord.
     * @return bind variable value for passWord
     */
    public String getpassWord()
    {
        return (String) getNamedWhereClauseParam("passWord");
    }

    /**
     * Sets <code>value</code> for bind variable passWord.
     * @param value value to bind as passWord
     */
    public void setpassWord(String value)
    {
        setNamedWhereClauseParam("passWord", value);
    }
}
