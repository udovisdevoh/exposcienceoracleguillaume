import java.util.Map;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;

import oracle.adf.view.rich.component.rich.input.RichInputText;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

import org.apache.myfaces.trinidad.context.RequestContext;

public class UnBean
{
    private BindingContainer bindings;
    private RichInputText ancienMotDePasse;
    private RichInputText nouveauMotDePasse;
    private RichInputText confirmationMotDePasse;

    public UnBean()
    {
    }

    public BindingContainer getBindings()
    {
        if (this.bindings == null)
        {
            FacesContext fc = FacesContext.getCurrentInstance();
            this.bindings =
                    (BindingContainer) fc.getApplication().evaluateExpressionGet(fc,
                                                                                 "#{bindings}",
                                                                                 BindingContainer.class);
        }
        return this.bindings;
    }

    public String commandButton_action()
    {
        BindingContainer bindings = getBindings();        
        OperationBinding operationBinding =
            bindings.getOperationBinding("modifierMotDePasse");
        Map param = operationBinding.getParamsMap();
        param.put("ancienMotDePasse", ancienMotDePasse.toString());
        param.put("nouveauMotDePasse", nouveauMotDePasse.toString());
        param.put("confirmationMotDePasse", confirmationMotDePasse.toString());
        Boolean result = (Boolean)operationBinding.execute();
        
        if (result == null)
            return "Result est null, on sait pas trop kossé ça fait";
                
        if (result.booleanValue())
            return "Ça marche";
        else
            return "Ça ne marche pas";
    }

    public String commandButton_enregistrer()
    {
        BindingContainer bindings = getBindings();
        OperationBinding operationBinding =
            bindings.getOperationBinding("Commit");
        Object result = operationBinding.execute();
        if (!operationBinding.getErrors().isEmpty())
        {
            return null;
        }
        return null;
    }

    public void inputText_validator(FacesContext facesContext,
                                    UIComponent uIComponent, Object object)
    {
        // Add event code here...
    }

    public void setAncienMotDePasse(RichInputText ancienMotDePasse)
    {
        this.ancienMotDePasse = ancienMotDePasse;
    }

    public RichInputText getAncienMotDePasse()
    {
        return ancienMotDePasse;
    }

    public void setNouveauMotDePasse(RichInputText nouveauMotDePasse)
    {
        this.nouveauMotDePasse = nouveauMotDePasse;
    }

    public RichInputText getNouveauMotDePasse()
    {
        return nouveauMotDePasse;
    }

    public void setConfirmationMotDePasse(RichInputText confirmationMotDePasse)
    {
        this.confirmationMotDePasse = confirmationMotDePasse;
    }

    public RichInputText getConfirmationMotDePasse()
    {
        return confirmationMotDePasse;
    }

    public void setBindings(BindingContainer bindings)
    {
        this.bindings = bindings;
    }

    public BindingContainer getBindings1()
    {
        return bindings;
    }
}
