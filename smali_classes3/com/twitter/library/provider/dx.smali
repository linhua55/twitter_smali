.class Lcom/twitter/library/provider/dx;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:J

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:I

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final i:I

.field public final j:I

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final m:I

.field public final n:I

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lckg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILjava/util/List;IILjava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13674
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move-object/from16 v19, p6

    invoke-direct/range {v0 .. v20}, Lcom/twitter/library/provider/dx;-><init>(JIJJJIILjava/util/List;IILjava/util/List;Ljava/util/List;IILjava/util/List;Ljava/util/List;)V

    .line 13677
    return-void
.end method

.method constructor <init>(JIJJJIILjava/util/List;IILjava/util/List;Ljava/util/List;IILjava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJJJII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lckg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13654
    iput-wide p1, p0, Lcom/twitter/library/provider/dx;->a:J

    .line 13655
    iput p3, p0, Lcom/twitter/library/provider/dx;->b:I

    .line 13656
    iput-wide p4, p0, Lcom/twitter/library/provider/dx;->c:J

    .line 13657
    iput-wide p6, p0, Lcom/twitter/library/provider/dx;->d:J

    .line 13658
    iput-wide p8, p0, Lcom/twitter/library/provider/dx;->e:J

    .line 13659
    iput p10, p0, Lcom/twitter/library/provider/dx;->f:I

    .line 13660
    iput p11, p0, Lcom/twitter/library/provider/dx;->g:I

    .line 13661
    iput-object p12, p0, Lcom/twitter/library/provider/dx;->h:Ljava/util/List;

    .line 13662
    iput p13, p0, Lcom/twitter/library/provider/dx;->i:I

    .line 13663
    move/from16 v0, p14

    iput v0, p0, Lcom/twitter/library/provider/dx;->j:I

    .line 13664
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/twitter/library/provider/dx;->k:Ljava/util/List;

    .line 13665
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/twitter/library/provider/dx;->l:Ljava/util/List;

    .line 13666
    move/from16 v0, p17

    iput v0, p0, Lcom/twitter/library/provider/dx;->m:I

    .line 13667
    move/from16 v0, p18

    iput v0, p0, Lcom/twitter/library/provider/dx;->n:I

    .line 13668
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/twitter/library/provider/dx;->o:Ljava/util/List;

    .line 13669
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/twitter/library/provider/dx;->p:Ljava/util/List;

    .line 13670
    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .prologue
    .line 13680
    iget-wide v0, p0, Lcom/twitter/library/provider/dx;->d:J

    return-wide v0
.end method
