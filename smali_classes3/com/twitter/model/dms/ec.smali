.class public Lcom/twitter/model/dms/ec;
.super Lcom/twitter/model/dms/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/d",
        "<",
        "Lcom/twitter/model/dms/ea;",
        "Lcom/twitter/model/dms/ec;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/twitter/model/dms/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/twitter/model/dms/ec;->e()Lcom/twitter/model/dms/ea;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/ea;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/twitter/model/dms/ea;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/ea;-><init>(Lcom/twitter/model/dms/ec;Lcom/twitter/model/dms/eb;)V

    return-object v0
.end method
