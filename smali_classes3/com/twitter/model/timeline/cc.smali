.class public Lcom/twitter/model/timeline/cc;
.super Lcom/twitter/model/timeline/az;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/timeline/az",
        "<",
        "Lcom/twitter/model/timeline/ca;",
        "Lcom/twitter/model/timeline/cc;",
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

.field private m:Lcom/twitter/model/timeline/aa;

.field private n:Lcom/twitter/model/timeline/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/twitter/model/timeline/az;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/timeline/cc;)Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/model/timeline/cc;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/model/timeline/cc;)Lcom/twitter/model/timeline/aa;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/model/timeline/cc;->m:Lcom/twitter/model/timeline/aa;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/model/timeline/cc;)Lcom/twitter/model/timeline/t;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/model/timeline/cc;->n:Lcom/twitter/model/timeline/t;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/aa;)Lcom/twitter/model/timeline/cc;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/twitter/model/timeline/cc;->m:Lcom/twitter/model/timeline/aa;

    .line 76
    return-object p0
.end method

.method public a(Lcom/twitter/model/timeline/t;)Lcom/twitter/model/timeline/cc;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/twitter/model/timeline/cc;->n:Lcom/twitter/model/timeline/t;

    .line 87
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/model/timeline/cc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/timeline/cf;",
            ">;)",
            "Lcom/twitter/model/timeline/cc;"
        }
    .end annotation

    .prologue
    .line 69
    iput-object p1, p0, Lcom/twitter/model/timeline/cc;->a:Ljava/util/List;

    .line 70
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/twitter/model/timeline/az;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/cc;->m:Lcom/twitter/model/timeline/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/cc;->a:Ljava/util/List;

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
    .line 61
    invoke-virtual {p0}, Lcom/twitter/model/timeline/cc;->e()Lcom/twitter/model/timeline/ca;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/timeline/ca;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/twitter/model/timeline/ca;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/model/timeline/ca;-><init>(Lcom/twitter/model/timeline/cc;ILcom/twitter/model/timeline/cb;)V

    return-object v0
.end method
