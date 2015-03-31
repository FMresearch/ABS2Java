package ABS.Absyn; // Java Package generated by the BNF Converter.

public class AnyTyIden extends AnyIdent {
  public final String uident_;

  public AnyTyIden(String p1) { uident_ = p1; }

  public <R,A> R accept(ABS.Absyn.AnyIdent.Visitor<R,A> v, A arg) { return v.visit(this, arg); }

  public boolean equals(Object o) {
    if (this == o) return true;
    if (o instanceof ABS.Absyn.AnyTyIden) {
      ABS.Absyn.AnyTyIden x = (ABS.Absyn.AnyTyIden)o;
      return this.uident_.equals(x.uident_);
    }
    return false;
  }

  public int hashCode() {
    return this.uident_.hashCode();
  }


}