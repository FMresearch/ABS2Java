package ABS.Absyn; // Java Package generated by the BNF Converter.

public class SIfElse extends Stm {
  public final PureExp pureexp_;
  public final Stm stm_1, stm_2;

  public SIfElse(PureExp p1, Stm p2, Stm p3) { pureexp_ = p1; stm_1 = p2; stm_2 = p3; }

  public <R,A> R accept(ABS.Absyn.Stm.Visitor<R,A> v, A arg) { return v.visit(this, arg); }

  public boolean equals(Object o) {
    if (this == o) return true;
    if (o instanceof ABS.Absyn.SIfElse) {
      ABS.Absyn.SIfElse x = (ABS.Absyn.SIfElse)o;
      return this.pureexp_.equals(x.pureexp_) && this.stm_1.equals(x.stm_1) && this.stm_2.equals(x.stm_2);
    }
    return false;
  }

  public int hashCode() {
    return 37*(37*(this.pureexp_.hashCode())+this.stm_1.hashCode())+this.stm_2.hashCode();
  }


}
