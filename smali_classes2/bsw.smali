.class public Lbsw;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lbsv;

.field private final b:Lbtc;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lbsv;

    invoke-direct {v0, p1, p2, p3}, Lbsv;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lbsw;->a:Lbsv;

    .line 32
    new-instance v0, Lbtc;

    .line 33
    invoke-static {p1, p2, p3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lbtc;-><init>(Landroid/content/Context;JLcom/twitter/library/provider/dm;)V

    iput-object v0, p0, Lbsw;->b:Lbtc;

    .line 34
    return-void
.end method

.method private a(Lctt;Lctj;Lcub;)Lctk;
    .locals 2

    .prologue
    .line 61
    instance-of v0, p1, Lcte;

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcte;

    .line 63
    iget-object v1, p0, Lbsw;->a:Lbsv;

    invoke-virtual {v1, v0, p2, p3}, Lbsv;->a(Lcte;Lctj;Lcub;)Lctf;

    move-result-object v0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempting to process an unrecognized TimelineInstruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lcty;Lcom/twitter/android/timeline/cp;)Lctn;
    .locals 5

    .prologue
    .line 44
    iget-object v0, p1, Lcty;->b:Lcto;

    iget-object v0, v0, Lcto;->b:Ljava/util/List;

    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 44
    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 48
    iget-object v0, p0, Lbsw;->b:Lbtc;

    invoke-virtual {v0, p2}, Lbtc;->a(Lcom/twitter/android/timeline/cp;)V

    .line 51
    iget-object v0, p1, Lcty;->b:Lcto;

    iget-object v0, v0, Lcto;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctt;

    .line 52
    iget-object v3, p1, Lcty;->a:Lctj;

    iget-object v4, p1, Lcty;->c:Lcub;

    invoke-direct {p0, v0, v3, v4}, Lbsw;->a(Lctt;Lctj;Lcub;)Lctk;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 55
    :cond_0
    new-instance v2, Lctn;

    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v2, v0}, Lctn;-><init>(Ljava/util/List;)V

    return-object v2
.end method
