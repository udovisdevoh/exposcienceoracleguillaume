package model.view.backing;

import oracle.adf.view.rich.component.rich.RichDocument;
import oracle.adf.view.rich.component.rich.RichForm;
import oracle.adf.view.rich.component.rich.fragment.RichRegion;

public class Home
{
  private RichForm form1;
  private RichDocument document1;
  private RichRegion TF_A1;

  public void setForm1(RichForm form1)
  {
    this.form1 = form1;
  }

  public RichForm getForm1()
  {
    return form1;
  }

  public void setDocument1(RichDocument document1)
  {
    this.document1 = document1;
  }

  public RichDocument getDocument1()
  {
    return document1;
  }

  public void setTF_A1(RichRegion TF_A1)
  {
    this.TF_A1 = TF_A1;
  }

  public RichRegion getTF_A1()
  {
    return TF_A1;
  }
}
