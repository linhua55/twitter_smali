.class public Lcom/twitter/model/dms/bz;
.super Lcom/twitter/model/dms/aq;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/aq",
        "<",
        "Lcom/twitter/model/dms/bx;",
        "Lcom/twitter/model/dms/bz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/twitter/model/dms/aq;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic bq_()Z
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Lcom/twitter/model/dms/aq;->bq_()Z

    move-result v0

    return v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/twitter/model/dms/bz;->e()Lcom/twitter/model/dms/bx;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/bx;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/model/dms/bx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/bx;-><init>(Lcom/twitter/model/dms/bz;Lcom/twitter/model/dms/by;)V

    return-object v0
.end method
