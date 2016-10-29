.class public Lcom/twitter/model/dms/ct;
.super Lcom/twitter/model/dms/cs;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/cs",
        "<",
        "Lcom/twitter/model/dms/cq;",
        "Lcom/twitter/model/dms/ct;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/twitter/model/dms/cs;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/twitter/model/dms/ct;->e()Lcom/twitter/model/dms/cq;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/cq;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/twitter/model/dms/cq;

    invoke-direct {v0, p0}, Lcom/twitter/model/dms/cq;-><init>(Lcom/twitter/model/dms/cs;)V

    return-object v0
.end method
