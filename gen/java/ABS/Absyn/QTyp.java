package ABS.Absyn; // Java Package generated by the BNF Converter.

public class QTyp extends QType {
  public final ListQTypeSegment listqtypesegment_;

  public QTyp(ListQTypeSegment p1) { listqtypesegment_ = p1; }

  public <R,A> R accept(ABS.Absyn.QType.Visitor<R,A> v, A arg) { return v.visit(this, arg); }

  public boolean equals(Object o) {
    if (this == o) return true;
    if (o instanceof ABS.Absyn.QTyp) {
      ABS.Absyn.QTyp x = (ABS.Absyn.QTyp)o;
      return this.listqtypesegment_.equals(x.listqtypesegment_);
    }
    return false;
  }

  public int hashCode() {
    return this.listqtypesegment_.hashCode();
  }


}