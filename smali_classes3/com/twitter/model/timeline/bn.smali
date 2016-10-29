.class public Lcom/twitter/model/timeline/bn;
.super Lcom/twitter/model/timeline/az;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/timeline/az",
        "<",
        "Lcom/twitter/model/timeline/bl;",
        "Lcom/twitter/model/timeline/bn;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/model/timeline/bk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/twitter/model/timeline/az;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/bk;)Lcom/twitter/model/timeline/bn;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/twitter/model/timeline/bn;->a:Lcom/twitter/model/timeline/bk;

    .line 23
    return-object p0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/twitter/model/timeline/az;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/model/timeline/bn;->a:Lcom/twitter/model/timeline/bk;

    if-eqz v0, :cond_0

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
    .line 15
    invoke-virtual {p0}, Lcom/twitter/model/timeline/bn;->e()Lcom/twitter/model/timeline/bl;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/timeline/bl;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/twitter/model/timeline/bl;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/model/timeline/bl;-><init>(Lcom/twitter/model/timeline/bn;ILcom/twitter/model/timeline/bm;)V

    return-object v0
.end method
