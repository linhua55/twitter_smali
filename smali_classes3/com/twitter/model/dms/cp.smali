.class public Lcom/twitter/model/dms/cp;
.super Lcom/twitter/model/dms/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/h",
        "<",
        "Lcom/twitter/model/dms/cn;",
        "Lcom/twitter/model/dms/cp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/twitter/model/dms/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/twitter/model/dms/cp;->e()Lcom/twitter/model/dms/cn;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/cn;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/twitter/model/dms/cn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/cn;-><init>(Lcom/twitter/model/dms/cp;Lcom/twitter/model/dms/co;)V

    return-object v0
.end method
