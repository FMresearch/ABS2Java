package ABS.Absyn; // Java Package generated by the BNF Converter.

public class JustBlock extends MaybeBlock {
  public final Block block_;

  public JustBlock(Block p1) { block_ = p1; }

  public <R,A> R accept(ABS.Absyn.MaybeBlock.Visitor<R,A> v, A arg) { return v.visit(this, arg); }

  public boolean equals(Object o) {
    if (this == o) return true;
    if (o instanceof ABS.Absyn.JustBlock) {
      ABS.Absyn.JustBlock x = (ABS.Absyn.JustBlock)o;
      return this.block_.equals(x.block_);
    }
    return false;
  }

  public int hashCode() {
    return this.block_.hashCode();
  }


}
