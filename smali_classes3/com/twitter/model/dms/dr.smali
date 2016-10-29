.class public Lcom/twitter/model/dms/dr;
.super Lcom/twitter/model/dms/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/d",
        "<",
        "Lcom/twitter/model/dms/dp;",
        "Lcom/twitter/model/dms/dr;",
        "Lcom/twitter/model/dms/ds;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/twitter/model/dms/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/twitter/model/dms/dr;->e()Lcom/twitter/model/dms/dp;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/dp;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/twitter/model/dms/dp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/dp;-><init>(Lcom/twitter/model/dms/dr;Lcom/twitter/model/dms/dq;)V

    return-object v0
.end method
