package ABS.Absyn; // Java Package generated by the BNF Converter.

public abstract class Block implements java.io.Serializable {
  public abstract <R,A> R accept(Block.Visitor<R,A> v, A arg);
  public interface Visitor <R,A> {
    public R visit(ABS.Absyn.Bloc p, A arg);

  }

}
