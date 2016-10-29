.class public Lcom/twitter/model/dms/cl;
.super Lcom/twitter/model/dms/j;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/j",
        "<",
        "Lcom/twitter/model/dms/cj;",
        "Lcom/twitter/model/dms/cl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/twitter/model/dms/j;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/twitter/model/dms/cl;->e()Lcom/twitter/model/dms/cj;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/cj;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/twitter/model/dms/cj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/cj;-><init>(Lcom/twitter/model/dms/cl;Lcom/twitter/model/dms/ck;)V

    return-object v0
.end method
