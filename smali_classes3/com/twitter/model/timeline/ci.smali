.class public Lcom/twitter/model/timeline/ci;
.super Lcom/twitter/model/timeline/az;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/timeline/az",
        "<",
        "Lcom/twitter/model/timeline/cg;",
        "Lcom/twitter/model/timeline/ci;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/model/moments/at;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/twitter/model/timeline/az;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/at;)Lcom/twitter/model/timeline/ci;
    .locals 1

    .prologue
    .line 25
    iput-object p1, p0, Lcom/twitter/model/timeline/ci;->a:Lcom/twitter/model/moments/at;

    .line 26
    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p1, Lcom/twitter/model/moments/at;->e:Lcom/twitter/model/timeline/l;

    invoke-virtual {p0, v0}, Lcom/twitter/model/timeline/ci;->a(Lcom/twitter/model/timeline/l;)Lcom/twitter/model/timeline/az;

    .line 29
    :cond_0
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/twitter/model/timeline/az;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/ci;->a:Lcom/twitter/model/moments/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/ci;->a:Lcom/twitter/model/moments/at;

    iget-object v0, v0, Lcom/twitter/model/moments/at;->c:Ljava/util/List;

    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/twitter/model/timeline/ci;->e()Lcom/twitter/model/timeline/cg;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/timeline/cg;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/twitter/model/timeline/cg;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/model/timeline/cg;-><init>(Lcom/twitter/model/timeline/ci;ILcom/twitter/model/timeline/ch;)V

    return-object v0
.end method
