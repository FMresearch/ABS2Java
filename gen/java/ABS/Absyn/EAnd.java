package ABS.Absyn; // Java Package generated by the BNF Converter.

public class EAnd extends PureExp {
  public final PureExp pureexp_1, pureexp_2;

  public EAnd(PureExp p1, PureExp p2) { pureexp_1 = p1; pureexp_2 = p2; }

  public <R,A> R accept(ABS.Absyn.PureExp.Visitor<R,A> v, A arg) { return v.visit(this, arg); }

  public boolean equals(Object o) {
    if (this == o) return true;
    if (o instanceof ABS.Absyn.EAnd) {
      ABS.Absyn.EAnd x = (ABS.Absyn.EAnd)o;
      return this.pureexp_1.equals(x.pureexp_1) && this.pureexp_2.equals(x.pureexp_2);
    }
    return false;
  }

  public int hashCode() {
    return 37*(this.pureexp_1.hashCode())+this.pureexp_2.hashCode();
  }


}