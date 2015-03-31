package ABS.Absyn; // Java Package generated by the BNF Converter.

public class Bloc extends Block {
  public final ListStm liststm_;

  public Bloc(ListStm p1) { liststm_ = p1; }

  public <R,A> R accept(ABS.Absyn.Block.Visitor<R,A> v, A arg) { return v.visit(this, arg); }

  public boolean equals(Object o) {
    if (this == o) return true;
    if (o instanceof ABS.Absyn.Bloc) {
      ABS.Absyn.Bloc x = (ABS.Absyn.Bloc)o;
      return this.liststm_.equals(x.liststm_);
    }
    return false;
  }

  public int hashCode() {
    return this.liststm_.hashCode();
  }


}
