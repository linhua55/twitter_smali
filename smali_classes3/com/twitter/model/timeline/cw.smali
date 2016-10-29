.class public Lcom/twitter/model/timeline/cw;
.super Lcom/twitter/model/timeline/az;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/timeline/az",
        "<",
        "Lcom/twitter/model/timeline/cu;",
        "Lcom/twitter/model/timeline/cw;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/model/timeline/df;

.field m:Lcom/twitter/model/timeline/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/twitter/model/timeline/az;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/df;)Lcom/twitter/model/timeline/cw;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/twitter/model/timeline/cw;->a:Lcom/twitter/model/timeline/df;

    .line 65
    return-object p0
.end method

.method public a(Lcom/twitter/model/timeline/t;)Lcom/twitter/model/timeline/cw;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/twitter/model/timeline/cw;->m:Lcom/twitter/model/timeline/t;

    .line 71
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/twitter/model/timeline/az;->bq_()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/cw;->a:Lcom/twitter/model/timeline/df;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/cw;->a:Lcom/twitter/model/timeline/df;

    iget-object v0, v0, Lcom/twitter/model/timeline/df;->b:Ljava/util/List;

    .line 77
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/cw;->a:Lcom/twitter/model/timeline/df;

    iget-object v0, v0, Lcom/twitter/model/timeline/df;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/twitter/model/timeline/cw;->e()Lcom/twitter/model/timeline/cu;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/timeline/cu;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/twitter/model/timeline/cu;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/model/timeline/cu;-><init>(Lcom/twitter/model/timeline/cw;ILcom/twitter/model/timeline/cv;)V

    return-object v0
.end method
