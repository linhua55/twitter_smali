.class public Lcom/twitter/model/timeline/bj;
.super Lcom/twitter/model/timeline/az;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/timeline/az",
        "<",
        "Lcom/twitter/model/timeline/bh;",
        "Lcom/twitter/model/timeline/bj;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/timeline/cf;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/twitter/model/timeline/o;

.field private n:Lcom/twitter/model/timeline/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/twitter/model/timeline/az;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/timeline/bj;)Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/model/timeline/bj;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/model/timeline/bj;)Lcom/twitter/model/timeline/o;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/model/timeline/bj;->m:Lcom/twitter/model/timeline/o;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/model/timeline/bj;)Lcom/twitter/model/timeline/t;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/twitter/model/timeline/bj;->n:Lcom/twitter/model/timeline/t;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/o;)Lcom/twitter/model/timeline/bj;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/twitter/model/timeline/bj;->m:Lcom/twitter/model/timeline/o;

    .line 63
    return-object p0
.end method

.method public a(Lcom/twitter/model/timeline/t;)Lcom/twitter/model/timeline/bj;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/twitter/model/timeline/bj;->n:Lcom/twitter/model/timeline/t;

    .line 74
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/model/timeline/bj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/timeline/cf;",
            ">;)",
            "Lcom/twitter/model/timeline/bj;"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/twitter/model/timeline/bj;->a:Ljava/util/List;

    .line 57
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/twitter/model/timeline/az;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/bj;->m:Lcom/twitter/model/timeline/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/bj;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/twitter/model/timeline/bj;->e()Lcom/twitter/model/timeline/bh;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/timeline/bh;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/twitter/model/timeline/bh;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/model/timeline/bh;-><init>(Lcom/twitter/model/timeline/bj;ILcom/twitter/model/timeline/bi;)V

    return-object v0
.end method
