package model;

import oracle.jbo.AttributeList;
import oracle.jbo.Key;
import oracle.jbo.RowIterator;
import oracle.jbo.domain.Date;
import oracle.jbo.domain.Number;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;
import oracle.jbo.server.TransactionEvent;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Fri Apr 23 14:22:37 EDT 2010
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class PAuditeurImpl extends EntityImpl
{
    private static PAuditeurDefImpl mDefinitionObject;

    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. Do not modify.
     */
    public enum AttributesEnum
    {
        Noauditeur
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getNoauditeur();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setNoauditeur((Number) value);
            }
        },
        Codeauditeur
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getCodeauditeur();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setCodeauditeur((String) value);
            }
        },
        Motdepasse
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getMotdepasse();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setMotdepasse((String) value);
            }
        },
        Nom
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getNom();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setNom((String) value);
            }
        },
        Prenom
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getPrenom();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setPrenom((String) value);
            }
        },
        Juge
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getJuge();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setJuge((Date) value);
            }
        },
        Rue
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getRue();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setRue((String) value);
            }
        },
        Ville
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getVille();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setVille((String) value);
            }
        },
        CodePostal
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getCodePostal();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setCodePostal((String) value);
            }
        },
        Noregion
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getNoregion();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setNoregion((Number) value);
            }
        },
        Telephone
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getTelephone();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setTelephone((String) value);
            }
        },
        Courriel
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getCourriel();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setCourriel((String) value);
            }
        },
        Statut
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getStatut();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setStatut((String) value);
            }
        },
        Candidatjuge
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getCandidatjuge();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setCandidatjuge((Date) value);
            }
        },
        PEvaluation
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getPEvaluation();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setAttributeInternal(index(), value);
            }
        },
        PInscription
        {
            public Object get(PAuditeurImpl obj)
            {
                return obj.getPInscription();
            }

            public void put(PAuditeurImpl obj, Object value)
            {
                obj.setAttributeInternal(index(), value);
            }
        };
        private static AttributesEnum[] vals = null;
        private static int firstIndex = 0;

        public abstract Object get(PAuditeurImpl object);

        public abstract void put(PAuditeurImpl object, Object value);

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
    public static final int NOAUDITEUR = AttributesEnum.Noauditeur.index();
    public static final int CODEAUDITEUR =
        AttributesEnum.Codeauditeur.index();
    public static final int MOTDEPASSE = AttributesEnum.Motdepasse.index();
    public static final int NOM = AttributesEnum.Nom.index();
    public static final int PRENOM = AttributesEnum.Prenom.index();
    public static final int JUGE = AttributesEnum.Juge.index();
    public static final int RUE = AttributesEnum.Rue.index();
    public static final int VILLE = AttributesEnum.Ville.index();
    public static final int CODEPOSTAL = AttributesEnum.CodePostal.index();
    public static final int NOREGION = AttributesEnum.Noregion.index();
    public static final int TELEPHONE = AttributesEnum.Telephone.index();
    public static final int COURRIEL = AttributesEnum.Courriel.index();
    public static final int STATUT = AttributesEnum.Statut.index();
    public static final int CANDIDATJUGE =
        AttributesEnum.Candidatjuge.index();

    public static final int PEVALUATION =
        AttributesEnum.PEvaluation.index();

    public static final int PINSCRIPTION =
        AttributesEnum.PInscription.index();

    /**
     * This is the default constructor (do not remove).
     */
    public PAuditeurImpl()
    {
    }


    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject()
    {
        if (mDefinitionObject == null)
        {
            mDefinitionObject =
                    (PAuditeurDefImpl) EntityDefImpl.findDefObject("model.PAuditeur");
        }
        return mDefinitionObject;
    }

    /**
     * Gets the attribute value for Noauditeur, using the alias name Noauditeur.
     * @return the Noauditeur
     */
    public Number getNoauditeur()
    {
        return (Number) getAttributeInternal(NOAUDITEUR);
    }

    /**
     * Sets <code>value</code> as the attribute value for Noauditeur.
     * @param value value to set the Noauditeur
     */
    public void setNoauditeur(Number value)
    {
        setAttributeInternal(NOAUDITEUR, value);
    }

    /**
     * Gets the attribute value for Codeauditeur, using the alias name Codeauditeur.
     * @return the Codeauditeur
     */
    public String getCodeauditeur()
    {
        return (String) getAttributeInternal(CODEAUDITEUR);
    }

    /**
     * Sets <code>value</code> as the attribute value for Codeauditeur.
     * @param value value to set the Codeauditeur
     */
    public void setCodeauditeur(String value)
    {
        setAttributeInternal(CODEAUDITEUR, value);
    }

    /**
     * Gets the attribute value for Motdepasse, using the alias name Motdepasse.
     * @return the Motdepasse
     */
    public String getMotdepasse()
    {
        return (String) getAttributeInternal(MOTDEPASSE);
    }

    /**
     * Sets <code>value</code> as the attribute value for Motdepasse.
     * @param value value to set the Motdepasse
     */
    public void setMotdepasse(String value)
    {
        setAttributeInternal(MOTDEPASSE, value);
    }

    /**
     * Gets the attribute value for Nom, using the alias name Nom.
     * @return the Nom
     */
    public String getNom()
    {
        return (String) getAttributeInternal(NOM);
    }

    /**
     * Sets <code>value</code> as the attribute value for Nom.
     * @param value value to set the Nom
     */
    public void setNom(String value)
    {
        setAttributeInternal(NOM, value);
    }

    /**
     * Gets the attribute value for Prenom, using the alias name Prenom.
     * @return the Prenom
     */
    public String getPrenom()
    {
        return (String) getAttributeInternal(PRENOM);
    }

    /**
     * Sets <code>value</code> as the attribute value for Prenom.
     * @param value value to set the Prenom
     */
    public void setPrenom(String value)
    {
        setAttributeInternal(PRENOM, value);
    }

    /**
     * Gets the attribute value for Juge, using the alias name Juge.
     * @return the Juge
     */
    public Date getJuge()
    {
        return (Date) getAttributeInternal(JUGE);
    }

    /**
     * Sets <code>value</code> as the attribute value for Juge.
     * @param value value to set the Juge
     */
    public void setJuge(Date value)
    {
        setAttributeInternal(JUGE, value);
    }

    /**
     * Gets the attribute value for Rue, using the alias name Rue.
     * @return the Rue
     */
    public String getRue()
    {
        return (String) getAttributeInternal(RUE);
    }

    /**
     * Sets <code>value</code> as the attribute value for Rue.
     * @param value value to set the Rue
     */
    public void setRue(String value)
    {
        setAttributeInternal(RUE, value);
    }

    /**
     * Gets the attribute value for Ville, using the alias name Ville.
     * @return the Ville
     */
    public String getVille()
    {
        return (String) getAttributeInternal(VILLE);
    }

    /**
     * Sets <code>value</code> as the attribute value for Ville.
     * @param value value to set the Ville
     */
    public void setVille(String value)
    {
        setAttributeInternal(VILLE, value);
    }

    /**
     * Gets the attribute value for CodePostal, using the alias name CodePostal.
     * @return the CodePostal
     */
    public String getCodePostal()
    {
        return (String) getAttributeInternal(CODEPOSTAL);
    }

    /**
     * Sets <code>value</code> as the attribute value for CodePostal.
     * @param value value to set the CodePostal
     */
    public void setCodePostal(String value)
    {
        setAttributeInternal(CODEPOSTAL, value);
    }

    /**
     * Gets the attribute value for Noregion, using the alias name Noregion.
     * @return the Noregion
     */
    public Number getNoregion()
    {
        return (Number) getAttributeInternal(NOREGION);
    }

    /**
     * Sets <code>value</code> as the attribute value for Noregion.
     * @param value value to set the Noregion
     */
    public void setNoregion(Number value)
    {
        setAttributeInternal(NOREGION, value);
    }

    /**
     * Gets the attribute value for Telephone, using the alias name Telephone.
     * @return the Telephone
     */
    public String getTelephone()
    {
        return (String) getAttributeInternal(TELEPHONE);
    }

    /**
     * Sets <code>value</code> as the attribute value for Telephone.
     * @param value value to set the Telephone
     */
    public void setTelephone(String value)
    {
        setAttributeInternal(TELEPHONE, value);
    }

    /**
     * Gets the attribute value for Courriel, using the alias name Courriel.
     * @return the Courriel
     */
    public String getCourriel()
    {
        return (String) getAttributeInternal(COURRIEL);
    }

    /**
     * Sets <code>value</code> as the attribute value for Courriel.
     * @param value value to set the Courriel
     */
    public void setCourriel(String value)
    {
        setAttributeInternal(COURRIEL, value);
    }

    /**
     * Gets the attribute value for Statut, using the alias name Statut.
     * @return the Statut
     */
    public String getStatut()
    {
        return (String) getAttributeInternal(STATUT);
    }

    /**
     * Sets <code>value</code> as the attribute value for Statut.
     * @param value value to set the Statut
     */
    public void setStatut(String value)
    {
        setAttributeInternal(STATUT, value);
    }

    /**
     * Gets the attribute value for Candidatjuge, using the alias name Candidatjuge.
     * @return the Candidatjuge
     */
    public Date getCandidatjuge()
    {
        return (Date) getAttributeInternal(CANDIDATJUGE);
    }

    /**
     * Sets <code>value</code> as the attribute value for Candidatjuge.
     * @param value value to set the Candidatjuge
     */
    public void setCandidatjuge(Date value)
    {
        setAttributeInternal(CANDIDATJUGE, value);
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

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getPEvaluation()
    {
        return (RowIterator) getAttributeInternal(PEVALUATION);
    }


    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getPInscription()
    {
        return (RowIterator) getAttributeInternal(PINSCRIPTION);
    }


    /**
     * @param noauditeur key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(Number noauditeur)
    {
        return new Key(new Object[]
                { noauditeur });
    }

    /**
     * Add attribute defaulting logic in this method.
     * @param attributeList list of attribute names/values to initialize the row
     */
    protected void create(AttributeList attributeList)
    {
        super.create(attributeList);
    }

    /**
     * Add entity remove logic in this method.
     */
    public void remove()
    {
        super.remove();
    }

    /**
     * Add locking logic here.
     */
    public void lock()
    {
        super.lock();
    }

    /**
     * Custom DML update/insert/delete logic here.
     * @param operation the operation type
     * @param e the transaction event
     */
    protected void doDML(int operation, TransactionEvent e)
    {
        super.doDML(operation, e);
    }
}
