.class public Lcom/twitter/model/dms/di;
.super Lcom/twitter/model/dms/r;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/r",
        "<",
        "Lcom/twitter/model/dms/dg;",
        "Lcom/twitter/model/dms/di;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/twitter/model/dms/r;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/twitter/model/dms/di;->e()Lcom/twitter/model/dms/dg;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/dg;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/twitter/model/dms/dg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/dg;-><init>(Lcom/twitter/model/dms/di;Lcom/twitter/model/dms/dh;)V

    return-object v0
.end method
