.class public Lcom/twitter/model/dms/dy;
.super Lcom/twitter/model/dms/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/d",
        "<",
        "Lcom/twitter/model/dms/dw;",
        "Lcom/twitter/model/dms/dy;",
        "Ljava/util/List",
        "<",
        "Lcom/twitter/model/dms/Participant;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/twitter/model/dms/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/twitter/model/dms/dy;->e()Lcom/twitter/model/dms/dw;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/dw;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/twitter/model/dms/dw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/dw;-><init>(Lcom/twitter/model/dms/dy;Lcom/twitter/model/dms/dx;)V

    return-object v0
.end method
