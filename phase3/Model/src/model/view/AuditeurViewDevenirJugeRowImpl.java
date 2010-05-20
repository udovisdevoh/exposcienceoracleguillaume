package model.view;

import model.AppModuleImpl;
import model.PAuditeurImpl;

import model.view.common.AuditeurViewDevenirJugeRow;

import oracle.jbo.Row;
import oracle.jbo.RowSet;
import oracle.jbo.RowSetIterator;
import oracle.jbo.domain.Date;
import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.ViewRowImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sat May 08 13:55:11 EDT 2010
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class AuditeurViewDevenirJugeRowImpl extends ViewRowImpl implements AuditeurViewDevenirJugeRow
{
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. Do not modify.
     */
    public enum AttributesEnum
    {
        Candidatjuge
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getCandidatjuge();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setCandidatjuge((Date) value);
            }
        },
        CodePostal
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getCodePostal();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setCodePostal((String) value);
            }
        },
        Codeauditeur
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getCodeauditeur();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setCodeauditeur((String) value);
            }
        },
        Courriel
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getCourriel();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setCourriel((String) value);
            }
        },
        Juge
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getJuge();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setJuge((Date) value);
            }
        },
        Motdepasse
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getMotdepasse();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setMotdepasse((String) value);
            }
        },
        Noauditeur
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getNoauditeur();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setNoauditeur((Number) value);
            }
        },
        Nom
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getNom();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setNom((String) value);
            }
        },
        Noregion
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getNoregion();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setNoregion((Number) value);
            }
        },
        Prenom
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getPrenom();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setPrenom((String) value);
            }
        },
        Rue
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getRue();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setRue((String) value);
            }
        },
        Statut
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getStatut();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setStatut((String) value);
            }
        },
        Telephone
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getTelephone();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setTelephone((String) value);
            }
        },
        Ville
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getVille();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setVille((String) value);
            }
        },
        PInscriptionView1
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getPInscriptionView1();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setAttributeInternal(index(), value);
            }
        },
        PCritereView1
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getPCritereView1();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setAttributeInternal(index(), value);
            }
        },
        PEvaluationView1
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getPEvaluationView1();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setAttributeInternal(index(), value);
            }
        },
        PAtelierView1
        {
            public Object get(AuditeurViewDevenirJugeRowImpl obj)
            {
                return obj.getPAtelierView1();
            }

            public void put(AuditeurViewDevenirJugeRowImpl obj,
                            Object value)
            {
                obj.setAttributeInternal(index(), value);
            }
        };
        private static AttributesEnum[] vals = null;
        private static int firstIndex = 0;

        public abstract Object get(AuditeurViewDevenirJugeRowImpl object);

        public abstract void put(AuditeurViewDevenirJugeRowImpl object,
                                 Object value);

        public int index()
        {
            return AttributesEnum.firstIndex() + ordinal();
        }

        public static int firstIndex()
        {
            return firstIndex;
        }

        public static int count()
        {
            return AttributesEnum.firstIndex() +
                AttributesEnum.staticValues().length;
        }

        public static AttributesEnum[] staticValues()
        {
            if (vals == null)
            {
                vals = AttributesEnum.values();
            }
            return vals;
        }
    }
    public static final int CANDIDATJUGE =
        AttributesEnum.Candidatjuge.index();
    public static final int CODEPOSTAL = AttributesEnum.CodePostal.index();
    public static final int CODEAUDITEUR =
        AttributesEnum.Codeauditeur.index();
    public static final int COURRIEL = AttributesEnum.Courriel.index();
    public static final int JUGE = AttributesEnum.Juge.index();
    public static final int MOTDEPASSE = AttributesEnum.Motdepasse.index();
    public static final int NOAUDITEUR = AttributesEnum.Noauditeur.index();
    public static final int NOM = AttributesEnum.Nom.index();
    public static final int NOREGION = AttributesEnum.Noregion.index();
    public static final int PRENOM = AttributesEnum.Prenom.index();
    public static final int RUE = AttributesEnum.Rue.index();
    public static final int STATUT = AttributesEnum.Statut.index();
    public static final int TELEPHONE = AttributesEnum.Telephone.index();
    public static final int VILLE = AttributesEnum.Ville.index();

    public static final int PINSCRIPTIONVIEW1 =
        AttributesEnum.PInscriptionView1.index();
    public static final int PCRITEREVIEW1 =
        AttributesEnum.PCritereView1.index();
    public static final int PEVALUATIONVIEW1 =
        AttributesEnum.PEvaluationView1.index();

    public static final int PATELIERVIEW1 =
        AttributesEnum.PAtelierView1.index();

    /**
     * This is the default constructor (do not remove).
     */
    public AuditeurViewDevenirJugeRowImpl()
    {
    }

    /**
     * Gets PAuditeur entity object.
     * @return the PAuditeur
     */
    public PAuditeurImpl getPAuditeur()
    {
        return (PAuditeurImpl) getEntity(0);
    }

    /**
     * Gets the attribute value for CANDIDATJUGE using the alias name Candidatjuge.
     * @return the CANDIDATJUGE
     */
    public Date getCandidatjuge()
    {
        return (Date) getAttributeInternal(CANDIDATJUGE);
    }

    /**
     * Sets <code>value</code> as attribute value for CANDIDATJUGE using the alias name Candidatjuge.
     * @param value value to set the CANDIDATJUGE
     */
    public void setCandidatjuge(Date value)
    {
        setAttributeInternal(CANDIDATJUGE, value);
    }

    /**
     * Gets the attribute value for CODE_POSTAL using the alias name CodePostal.
     * @return the CODE_POSTAL
     */
    public String getCodePostal()
    {
        return (String) getAttributeInternal(CODEPOSTAL);
    }

    /**
     * Sets <code>value</code> as attribute value for CODE_POSTAL using the alias name CodePostal.
     * @param value value to set the CODE_POSTAL
     */
    public void setCodePostal(String value)
    {
        setAttributeInternal(CODEPOSTAL, value);
    }

    /**
     * Gets the attribute value for CODEAUDITEUR using the alias name Codeauditeur.
     * @return the CODEAUDITEUR
     */
    public String getCodeauditeur()
    {
        return (String) getAttributeInternal(CODEAUDITEUR);
    }

    /**
     * Sets <code>value</code> as attribute value for CODEAUDITEUR using the alias name Codeauditeur.
     * @param value value to set the CODEAUDITEUR
     */
    public void setCodeauditeur(String value)
    {
        setAttributeInternal(CODEAUDITEUR, value);
    }

    /**
     * Gets the attribute value for COURRIEL using the alias name Courriel.
     * @return the COURRIEL
     */
    public String getCourriel()
    {
        return (String) getAttributeInternal(COURRIEL);
    }

    /**
     * Sets <code>value</code> as attribute value for COURRIEL using the alias name Courriel.
     * @param value value to set the COURRIEL
     */
    public void setCourriel(String value)
    {
        setAttributeInternal(COURRIEL, value);
    }

    /**
     * Gets the attribute value for JUGE using the alias name Juge.
     * @return the JUGE
     */
    public Date getJuge()
    {
        return (Date) getAttributeInternal(JUGE);
    }

    /**
     * Sets <code>value</code> as attribute value for JUGE using the alias name Juge.
     * @param value value to set the JUGE
     */
    public void setJuge(Date value)
    {
        setAttributeInternal(JUGE, value);
    }

    /**
     * Gets the attribute value for MOTDEPASSE using the alias name Motdepasse.
     * @return the MOTDEPASSE
     */
    public String getMotdepasse()
    {
        return (String) getAttributeInternal(MOTDEPASSE);
    }

    /**
     * Sets <code>value</code> as attribute value for MOTDEPASSE using the alias name Motdepasse.
     * @param value value to set the MOTDEPASSE
     */
    public void setMotdepasse(String value)
    {
        setAttributeInternal(MOTDEPASSE, value);
    }

    /**
     * Gets the attribute value for NOAUDITEUR using the alias name Noauditeur.
     * @return the NOAUDITEUR
     */
    public Number getNoauditeur()
    {
        return (Number) getAttributeInternal(NOAUDITEUR);
    }

    /**
     * Sets <code>value</code> as attribute value for NOAUDITEUR using the alias name Noauditeur.
     * @param value value to set the NOAUDITEUR
     */
    public void setNoauditeur(Number value)
    {
        setAttributeInternal(NOAUDITEUR, value);
    }

    /**
     * Gets the attribute value for NOM using the alias name Nom.
     * @return the NOM
     */
    public String getNom()
    {
        return (String) getAttributeInternal(NOM);
    }

    /**
     * Sets <code>value</code> as attribute value for NOM using the alias name Nom.
     * @param value value to set the NOM
     */
    public void setNom(String value)
    {
        setAttributeInternal(NOM, value);
    }

    /**
     * Gets the attribute value for NOREGION using the alias name Noregion.
     * @return the NOREGION
     */
    public Number getNoregion()
    {
        return (Number) getAttributeInternal(NOREGION);
    }

    /**
     * Sets <code>value</code> as attribute value for NOREGION using the alias name Noregion.
     * @param value value to set the NOREGION
     */
    public void setNoregion(Number value)
    {
        setAttributeInternal(NOREGION, value);
    }

    /**
     * Gets the attribute value for PRENOM using the alias name Prenom.
     * @return the PRENOM
     */
    public String getPrenom()
    {
        return (String) getAttributeInternal(PRENOM);
    }

    /**
     * Sets <code>value</code> as attribute value for PRENOM using the alias name Prenom.
     * @param value value to set the PRENOM
     */
    public void setPrenom(String value)
    {
        setAttributeInternal(PRENOM, value);
    }

    /**
     * Gets the attribute value for RUE using the alias name Rue.
     * @return the RUE
     */
    public String getRue()
    {
        return (String) getAttributeInternal(RUE);
    }

    /**
     * Sets <code>value</code> as attribute value for RUE using the alias name Rue.
     * @param value value to set the RUE
     */
    public void setRue(String value)
    {
        setAttributeInternal(RUE, value);
    }

    /**
     * Gets the attribute value for STATUT using the alias name Statut.
     * @return the STATUT
     */
    public String getStatut()
    {
        return (String) getAttributeInternal(STATUT);
    }

    /**
     * Sets <code>value</code> as attribute value for STATUT using the alias name Statut.
     * @param value value to set the STATUT
     */
    public void setStatut(String value)
    {
        setAttributeInternal(STATUT, value);
    }

    /**
     * Gets the attribute value for TELEPHONE using the alias name Telephone.
     * @return the TELEPHONE
     */
    public String getTelephone()
    {
        return (String) getAttributeInternal(TELEPHONE);
    }

    /**
     * Sets <code>value</code> as attribute value for TELEPHONE using the alias name Telephone.
     * @param value value to set the TELEPHONE
     */
    public void setTelephone(String value)
    {
        setAttributeInternal(TELEPHONE, value);
    }

    /**
     * Gets the attribute value for VILLE using the alias name Ville.
     * @return the VILLE
     */
    public String getVille()
    {
        return (String) getAttributeInternal(VILLE);
    }

    /**
     * Sets <code>value</code> as attribute value for VILLE using the alias name Ville.
     * @param value value to set the VILLE
     */
    public void setVille(String value)
    {
        setAttributeInternal(VILLE, value);
    }

    /**
     * Gets the view accessor <code>RowSet</code> PInscriptionView1.
     */
    public RowSet getPInscriptionView1()
    {
        return (RowSet) getAttributeInternal(PINSCRIPTIONVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> PCritereView1.
     */
    public RowSet getPCritereView1()
    {
        return (RowSet) getAttributeInternal(PCRITEREVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> PEvaluationView1.
     */
    public RowSet getPEvaluationView1()
    {
        return (RowSet) getAttributeInternal(PEVALUATIONVIEW1);
    }

    /**
     * Gets the view accessor <code>RowSet</code> PAtelierView1.
     */
    public RowSet getPAtelierView1()
    {
        return (RowSet) getAttributeInternal(PATELIERVIEW1);
    }

    /**
     * getAttrInvokeAccessor: generated method. Do not modify.
     * @param index the index identifying the attribute
     * @param attrDef the attribute

     * @return the attribute value
     * @throws Exception
     */
    protected Object getAttrInvokeAccessor(int index,
                                           AttributeDefImpl attrDef) throws Exception
    {
        if ((index >= AttributesEnum.firstIndex()) &&
            (index < AttributesEnum.count()))
        {
            return AttributesEnum.staticValues()[index -
                AttributesEnum.firstIndex()].get(this);
        }
        return super.getAttrInvokeAccessor(index, attrDef);
    }

    /**
     * setAttrInvokeAccessor: generated method. Do not modify.
     * @param index the index identifying the attribute
     * @param value the value to assign to the attribute
     * @param attrDef the attribute

     * @throws Exception
     */
    protected void setAttrInvokeAccessor(int index, Object value,
                                         AttributeDefImpl attrDef) throws Exception
    {
        if ((index >= AttributesEnum.firstIndex()) &&
            (index < AttributesEnum.count()))
        {
            AttributesEnum.staticValues()[index -
                AttributesEnum.firstIndex()].put(this, value);
            return;
        }
        super.setAttrInvokeAccessor(index, value, attrDef);
    }

    public void mettreJuge()
    {
        System.out.println("On met l'auditeur juge " + this.getNom() +
                           this.getPrenom());

        Date date = (Date) Date.getCurrentDate();
        setJuge(date);

        AppModuleImpl appModuleImpl =
            (AppModuleImpl) getApplicationModule();
        appModuleImpl.getDBTransaction().commit();


        //On ajoute les evaluations pour le juge
        PEvaluationViewImpl evaluationViewImpl =
            (PEvaluationViewImpl) appModuleImpl.getPEvaluationView1();

        PEvaluationViewRowImpl evaluation;

        RowSet atelierRowSet = this.getPAtelierView1();

        System.out.println("Cr�ation des �valuations");

        while (atelierRowSet.hasNext())
        {
            PAtelierViewRowImpl atelier =
                (PAtelierViewRowImpl) atelierRowSet.next();
            Number noAtel = atelier.getNoatel();
            System.out.println("Num�ro d'atelier: " + noAtel.toString());

            for (int i = 1; i <= 5; i++)
            {
                evaluation =
                        (PEvaluationViewRowImpl) evaluationViewImpl.createRow();
                evaluation.setNoauditeur(this.getNoauditeur());
                evaluation.setNocritere(new Number(i));
                evaluation.setNoatel(noAtel);
                evaluationViewImpl.insertRow(evaluation);
                appModuleImpl.getDBTransaction().commit();
            }
        }
    }

    public void limoger()
    {
        System.out.print("On limoge l'auditeur" + this.getNom() +
                         this.getPrenom());
        this.setJuge(null);

        AppModuleImpl appModuleImpl =
            (AppModuleImpl) getApplicationModule();
        appModuleImpl.getDBTransaction().commit();

        PEvaluationViewImpl evaluationView =
            (PEvaluationViewImpl) appModuleImpl.getPEvaluationView1();
        while (evaluationView.hasNext())
        {
            PEvaluationViewRowImpl evaluationRow =
                (PEvaluationViewRowImpl) evaluationView.next();
            if (evaluationRow.getNoauditeur().equals(this.getNoauditeur()))
            {
                evaluationRow.remove();
                System.out.println("On enl�ve une �valuation");
            }
        }

        appModuleImpl.getDBTransaction().commit();
    }

    /**
     * Sample exportable method.
     */
    public void sampleAuditeurViewDevenirJugeRowImplExportable()
    {
    }

    /**
     * Sample exportable method.
     */
    public void sampleAuditeurViewDevenirJugeRowImplExportable2(String testParam1)
    {
    }
}
