package ABS.Absyn; // Java Package generated by the BNF Converter.

public class SSkip extends Stm {

  public SSkip() { }

  public <R,A> R accept(ABS.Absyn.Stm.Visitor<R,A> v, A arg) { return v.visit(this, arg); }

  public boolean equals(Object o) {
    if (this == o) return true;
    if (o instanceof ABS.Absyn.SSkip) {
      return true;
    }
    return false;
  }

  public int hashCode() {
    return 37;
  }


}
