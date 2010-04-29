import java.util.Map;

import javax.faces.context.FacesContext;

import oracle.binding.BindingContainer;
import oracle.binding.OperationBinding;

import org.apache.myfaces.trinidad.context.RequestContext;

public class UnBean
{
  private BindingContainer bindings;

  public UnBean()
  {
  }

  public BindingContainer getBindings()
  {
    if (this.bindings == null)
    {
      FacesContext fc = FacesContext.getCurrentInstance();
      this.bindings =
          (BindingContainer) fc.getApplication().evaluateExpressionGet(fc, "#{bindings}",
            BindingContainer.class);
    }
    return this.bindings;
  }

  public String commandButton_action()
  {
    Map pageFlowScope = RequestContext.getCurrentInstance().getPageFlowScope();
    
    
    System.out.println("Il y a " + pageFlowScope.size() + " item dans le pageFlowScope");
    
    Object myObject = pageFlowScope.get("codeUsager");
    
    if (myObject == null)
      System.out.println("Attention, l'objet retourné du pageFlowScope est null");   
    
    System.out.println(myObject);   
    
    BindingContainer bindings = getBindings();
    OperationBinding operationBinding = bindings.getOperationBinding("Commit");
    Object result = operationBinding.execute();
    if (!operationBinding.getErrors().isEmpty())
    {
      return null;
    }
    return null;
  }

  public String commandButton_enregistrer()
  {
    BindingContainer bindings = getBindings();
    OperationBinding operationBinding = bindings.getOperationBinding("Commit");
    Object result = operationBinding.execute();
    if (!operationBinding.getErrors().isEmpty())
    {
      return null;
    }
    return null;
  }
}
