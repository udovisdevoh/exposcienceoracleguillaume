package model.view;

import model.AppModuleImpl;

import model.view.common.AuditeurViewDevenirJuge;

import oracle.jbo.domain.Date;
import oracle.jbo.server.ViewObjectImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri May 07 16:56:19 EDT 2010
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class AuditeurViewDevenirJugeImpl extends ViewObjectImpl implements AuditeurViewDevenirJuge
{
    /**
     * This is the default constructor (do not remove).
     */
    public AuditeurViewDevenirJugeImpl()
    {
    }

    public void mettreJugePasRow()
    {
        AuditeurViewDevenirJugeRowImpl row = (AuditeurViewDevenirJugeRowImpl)getCurrentRow();
        row.mettreJuge();
    }

    public void limogerPasRow()
    {        
        AuditeurViewDevenirJugeRowImpl row = (AuditeurViewDevenirJugeRowImpl)getCurrentRow();
        row.limoger();
    }
}