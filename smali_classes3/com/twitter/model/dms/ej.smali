.class public Lcom/twitter/model/dms/ej;
.super Lcom/twitter/model/dms/d;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/d",
        "<",
        "Lcom/twitter/model/dms/eh;",
        "Lcom/twitter/model/dms/ej;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/twitter/model/dms/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/twitter/model/dms/ej;->e()Lcom/twitter/model/dms/eh;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/eh;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/twitter/model/dms/eh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/eh;-><init>(Lcom/twitter/model/dms/ej;Lcom/twitter/model/dms/ei;)V

    return-object v0
.end method
