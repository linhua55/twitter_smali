.class public Lcom/twitter/model/dms/bv;
.super Lcom/twitter/model/dms/p;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/dms/p",
        "<",
        "Lcom/twitter/model/dms/bv;",
        "Lcom/twitter/model/dms/bu;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/twitter/model/dms/p;-><init>()V

    .line 192
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/dms/bu;)V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/p;-><init>(Lcom/twitter/model/dms/n;)V

    .line 196
    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/twitter/model/dms/bv;->e()Lcom/twitter/model/dms/bu;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/dms/bu;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Lcom/twitter/model/dms/bu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/dms/bu;-><init>(Lcom/twitter/model/dms/bv;Lcom/twitter/model/dms/bp;)V

    return-object v0
.end method
