.class public Lcom/twitter/model/dms/df;
.super Lcom/twitter/model/dms/r;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/r",
        "<",
        "Lcom/twitter/model/dms/dd;",
        "Lcom/twitter/model/dms/df;",
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
    invoke-virtual {p0}, Lcom/twitter/model/dms/df;->e()Lcom/twitter/model/dms/dd;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/dd;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/twitter/model/dms/dd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/dd;-><init>(Lcom/twitter/model/dms/df;Lcom/twitter/model/dms/de;)V

    return-object v0
.end method
