package model.view;

import model.AppModuleImpl;

import model.view.common.PAuditeurView;

import oracle.jbo.Row;
import oracle.jbo.domain.Date;
import oracle.jbo.server.ViewObjectImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Apr 23 14:36:21 EDT 2010
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class PAuditeurViewImpl extends ViewObjectImpl implements PAuditeurView
{
    /**
     * This is the default constructor (do not remove).
     */
    public PAuditeurViewImpl()
    {
    }

    public boolean connecter(String userName, String password)
    {
        System.out.println("Methode connecter avec " + userName + " et " +
                           password);
        setuserName(userName);
        setpassWord(password);
        executeQuery();
        return (getRowCount() > 0);
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

    public boolean modifierMotDePasse(String ancienMotDePasse,
                                      String nouveauMotDePasse,
                                      String confirmationMotDePasse)
    {
        System.out.println("Methode modifier mot de passe");
        System.out.println("Ancien: " + ancienMotDePasse);
        System.out.println("Nouveau1: " + nouveauMotDePasse);
        System.out.println("Nouveau2: " + confirmationMotDePasse);

        PAuditeurViewRowImpl row =
            (PAuditeurViewRowImpl) this.getRowAtRangeIndex(0);
        String password = row.getMotdepasse();

        System.out.println("Ancien mot de passe dans la row trouv�e: " +
                           password);

        if (password.equals(ancienMotDePasse))
        {
            System.out.println("Y�! l'ancien mot de passe est bon");
            if (nouveauMotDePasse.equals(confirmationMotDePasse))
            {
                System.out.println("Y�! Les deux nouvaux mots de passes sont pareils!");
                row.setMotdepasse(nouveauMotDePasse);
                AppModuleImpl appModuleImpl =
                    (AppModuleImpl) getApplicationModule();
                appModuleImpl.getDBTransaction().commit();

                System.out.println("On change le mot de passe pour " +
                                   nouveauMotDePasse);

                return true;
            }
            else
            {
                System.out.println("Boo! les 2 nouveaux mots de passes ne matchent pas");
            }
        }
        else
        {
            System.out.println("Boo! l'ancien mot de passe n'est pas bon");
        }
        return false;
    }

    public String getDateDevenuCandidatJuge()
    {
        PAuditeurViewRowImpl row =
            (PAuditeurViewRowImpl) this.getRowAtRangeIndex(0);
        Date date = row.getCandidatjuge();
        if (date == null)
            return "";
        else
            return date.toString();
    }

    public String getDateDevenuJuge()
    {
        PAuditeurViewRowImpl row =
            (PAuditeurViewRowImpl) this.getRowAtRangeIndex(0);
        Date date = row.getJuge();
        if (date == null)
            return "";
        else
            return date.toString();
    }

    public boolean annulerCandidatureJuge()
    {
        PAuditeurViewRowImpl row =
            (PAuditeurViewRowImpl) this.getRowAtRangeIndex(0);
        row.setJuge(null);
        AppModuleImpl appModuleImpl =
            (AppModuleImpl) getApplicationModule();
        appModuleImpl.getDBTransaction().commit();
        return true;
    }

    public boolean annulerDemandeJuge()
    {
        PAuditeurViewRowImpl row =
            (PAuditeurViewRowImpl) this.getRowAtRangeIndex(0);
        row.setCandidatjuge(null);
        AppModuleImpl appModuleImpl =
            (AppModuleImpl) getApplicationModule();
        appModuleImpl.getDBTransaction().commit();
        return true;
    }

    public boolean soumettreCandidatureJuge()
    {
        PAuditeurViewRowImpl row =
            (PAuditeurViewRowImpl) this.getRowAtRangeIndex(0);
        Date date = (Date) Date.getCurrentDate();
        row.setCandidatjuge(date);
        AppModuleImpl appModuleImpl =
            (AppModuleImpl) getApplicationModule();
        appModuleImpl.getDBTransaction().commit();
        return true;
    }

    public boolean editProfile(String nom, String prenom, String rue,
                               String ville, String codePostal,
                               String telephone, String courriel)
    {
        PAuditeurViewRowImpl row =
            (PAuditeurViewRowImpl) this.getRowAtRangeIndex(0);
        row.setNom(nom);
        row.setPrenom(prenom);
        row.setRue(rue);
        row.setVille(ville);
        row.setCodePostal(codePostal);
        row.setTelephone(telephone);
        row.setCourriel(courriel);

        AppModuleImpl appModuleImpl =
            (AppModuleImpl) getApplicationModule();
        appModuleImpl.getDBTransaction().commit();

        return true;
    }

    public boolean preEditProfile()
    {
        System.out.println("Information personnelles seront modifi�es");
        PAuditeurViewRowImpl row =
            (PAuditeurViewRowImpl) this.getRowAtRangeIndex(0);
        AppModuleImpl appModuleImpl =
            (AppModuleImpl) getApplicationModule();
        appModuleImpl.getDBTransaction().commit();
        return true;
    }
}
