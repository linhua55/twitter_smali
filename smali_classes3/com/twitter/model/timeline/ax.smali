.class public Lcom/twitter/model/timeline/ax;
.super Lcom/twitter/model/timeline/az;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/timeline/az",
        "<",
        "Lcom/twitter/model/timeline/aw;",
        "Lcom/twitter/model/timeline/ax;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/timeline/ay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/twitter/model/timeline/az;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/timeline/ax;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/model/timeline/ax;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/twitter/model/timeline/ax;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/timeline/ay;",
            ">;)",
            "Lcom/twitter/model/timeline/ax;"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/twitter/model/timeline/ax;->a:Ljava/util/List;

    .line 40
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/twitter/model/timeline/az;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/ax;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/twitter/model/timeline/ax;->e()Lcom/twitter/model/timeline/aw;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/timeline/aw;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/twitter/model/timeline/aw;

    const/16 v1, 0xe

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/timeline/aw;-><init>(Lcom/twitter/model/timeline/ax;I)V

    return-object v0
.end method
