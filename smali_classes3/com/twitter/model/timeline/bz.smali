.class public Lcom/twitter/model/timeline/bz;
.super Lcom/twitter/model/timeline/az;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/timeline/az",
        "<",
        "Lcom/twitter/model/timeline/bx;",
        "Lcom/twitter/model/timeline/bz;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/twitter/model/timeline/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/twitter/model/timeline/az;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/w;)Lcom/twitter/model/timeline/bz;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/twitter/model/timeline/bz;->a:Lcom/twitter/model/timeline/w;

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

    iget-object v0, p0, Lcom/twitter/model/timeline/bz;->a:Lcom/twitter/model/timeline/w;

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
    invoke-virtual {p0}, Lcom/twitter/model/timeline/bz;->e()Lcom/twitter/model/timeline/bx;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/twitter/model/timeline/bx;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/twitter/model/timeline/bx;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/twitter/model/timeline/bx;-><init>(Lcom/twitter/model/timeline/bz;ILcom/twitter/model/timeline/by;)V

    return-object v0
.end method
