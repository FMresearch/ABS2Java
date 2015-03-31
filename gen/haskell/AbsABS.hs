

module AbsABS where

-- Haskell module generated by the BNF converter




newtype UIdent = UIdent ((Int,Int),String) deriving (Eq,Ord,Show,Read)
newtype LIdent = LIdent ((Int,Int),String) deriving (Eq,Ord,Show,Read)
data AnyIdent =
   AnyIden LIdent
 | AnyTyIden UIdent
  deriving (Eq,Ord,Show,Read)

data Program =
   Prog [Module]
  deriving (Eq,Ord,Show,Read)

data Module =
   Modul QType [Export] [Import] [Decl] MaybeBlock
  deriving (Eq,Ord,Show,Read)

data Export =
   AnyExport [AnyIdent]
 | AnyFromExport [AnyIdent] QType
 | StarExport
 | StarFromExport QType
  deriving (Eq,Ord,Show,Read)

data Import =
   AnyImport ImportType TType AnyIdent
 | AnyFromImport ImportType [AnyIdent] QType
 | StarFromImport ImportType QType
  deriving (Eq,Ord,Show,Read)

data ImportType =
   ForeignImport
 | NormalImport
  deriving (Eq,Ord,Show,Read)

data Type =
   TUnderscore
 | TSimple QType
 | TGen QType [Type]
  deriving (Eq,Ord,Show,Read)

data QType =
   QTyp [QTypeSegment]
  deriving (Eq,Ord,Show,Read)

data QTypeSegment =
   QTypeSegmen UIdent
  deriving (Eq,Ord,Show,Read)

data TType =
   TTyp [TTypeSegment]
  deriving (Eq,Ord,Show,Read)

data TTypeSegment =
   TTypeSegmen UIdent
  deriving (Eq,Ord,Show,Read)

data Decl =
   TypeDecl UIdent Type
 | TypeParDecl UIdent [UIdent] Type
 | ExceptionDecl ConstrIdent
 | DataDecl UIdent [ConstrIdent]
 | DataParDecl UIdent [UIdent] [ConstrIdent]
 | FunDecl Type LIdent [Param] FunBody
 | FunParDecl Type LIdent [UIdent] [Param] FunBody
 | InterfDecl UIdent [MethSignat]
 | ExtendsDecl UIdent [QType] [MethSignat]
 | ClassDecl UIdent [ClassBody] MaybeBlock [ClassBody]
 | ClassParamDecl UIdent [Param] [ClassBody] MaybeBlock [ClassBody]
 | ClassImplements UIdent [QType] [ClassBody] MaybeBlock [ClassBody]
 | ClassParamImplements UIdent [Param] [QType] [ClassBody] MaybeBlock [ClassBody]
  deriving (Eq,Ord,Show,Read)

data ConstrIdent =
   SinglConstrIdent UIdent
 | ParamConstrIdent UIdent [ConstrType]
  deriving (Eq,Ord,Show,Read)

data ConstrType =
   EmptyConstrType Type
 | RecordConstrType Type LIdent
  deriving (Eq,Ord,Show,Read)

data FunBody =
   BuiltinFunBody
 | NormalFunBody PureExp
  deriving (Eq,Ord,Show,Read)

data MethSignat =
   MethSig Type LIdent [Param]
  deriving (Eq,Ord,Show,Read)

data ClassBody =
   FieldClassBody Type LIdent
 | FieldAssignClassBody Type LIdent PureExp
 | MethClassBody Type LIdent [Param] Block
  deriving (Eq,Ord,Show,Read)

data Block =
   Bloc [Stm]
  deriving (Eq,Ord,Show,Read)

data MaybeBlock =
   JustBlock Block
 | NoBlock
  deriving (Eq,Ord,Show,Read)

data Param =
   Par Type LIdent
  deriving (Eq,Ord,Show,Read)

data Stm =
   SExp Exp
 | SBlock [Stm]
 | SWhile PureExp Stm
 | SReturn Exp
 | SAss LIdent Exp
 | SFieldAss LIdent Exp
 | SDec Type LIdent
 | SDecAss Type LIdent Exp
 | SIf PureExp Stm
 | SIfElse PureExp Stm Stm
 | SSuspend
 | SSkip
 | SAssert PureExp
 | SAwait Guard
 | SThrow PureExp
 | STryCatchFinally Stm [CatchBranch] MaybeFinally
 | SPrint PureExp
  deriving (Eq,Ord,Show,Read)

data CatchBranch =
   CatchBranc Pattern Stm
  deriving (Eq,Ord,Show,Read)

data MaybeFinally =
   JustFinally Stm
 | NoFinally
  deriving (Eq,Ord,Show,Read)

data Guard =
   VarGuard LIdent
 | FieldGuard LIdent
 | ExpGuard PureExp
 | AndGuard Guard Guard
  deriving (Eq,Ord,Show,Read)

data Exp =
   ExpP PureExp
 | ExpE EffExp
  deriving (Eq,Ord,Show,Read)

data PureExp =
   EOr PureExp PureExp
 | EAnd PureExp PureExp
 | EEq PureExp PureExp
 | ENeq PureExp PureExp
 | ELt PureExp PureExp
 | ELe PureExp PureExp
 | EGt PureExp PureExp
 | EGe PureExp PureExp
 | EAdd PureExp PureExp
 | ESub PureExp PureExp
 | EMul PureExp PureExp
 | EDiv PureExp PureExp
 | EMod PureExp PureExp
 | ELogNeg PureExp
 | EIntNeg PureExp
 | EFunCall LIdent [PureExp]
 | EQualFunCall TType LIdent [PureExp]
 | ENaryFunCall LIdent [PureExp]
 | ENaryQualFunCall TType LIdent [PureExp]
 | EVar LIdent
 | EThis LIdent
 | EQualVar TType LIdent
 | ESinglConstr QType
 | EParamConstr QType [PureExp]
 | ELit Literal
 | Let Param PureExp PureExp
 | If PureExp PureExp PureExp
 | Case PureExp [CaseBranch]
  deriving (Eq,Ord,Show,Read)

data CaseBranch =
   CaseBranc Pattern PureExp
  deriving (Eq,Ord,Show,Read)

data Pattern =
   PIdent LIdent
 | PLit Literal
 | PSinglConstr UIdent
 | PParamConstr UIdent [Pattern]
 | PUnderscore
  deriving (Eq,Ord,Show,Read)

data Literal =
   LNull
 | LThis
 | LThisDC
 | LStr String
 | LInt Integer
  deriving (Eq,Ord,Show,Read)

data EffExp =
   New Type [PureExp]
 | NewLocal Type [PureExp]
 | SyncMethCall PureExp LIdent [PureExp]
 | ThisSyncMethCall LIdent [PureExp]
 | AsyncMethCall PureExp LIdent [PureExp]
 | ThisAsyncMethCall LIdent [PureExp]
 | Get PureExp
 | Spawns PureExp Type [PureExp]
  deriving (Eq,Ord,Show,Read)

data Ann =
   SimpleAnn PureExp
  deriving (Eq,Ord,Show,Read)

data AnnDecl =
   AnnDec [Ann] Decl
  deriving (Eq,Ord,Show,Read)

data AnnType =
   AnnTyp [Ann] Type
  deriving (Eq,Ord,Show,Read)

