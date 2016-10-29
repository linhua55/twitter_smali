.class public Lcom/twitter/model/moments/viewmodels/v;
.super Lcom/twitter/model/moments/viewmodels/r;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/moments/viewmodels/r",
        "<",
        "Lcom/twitter/model/moments/viewmodels/t;",
        "Lcom/twitter/model/moments/viewmodels/v;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/twitter/model/moments/viewmodels/r;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/t;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/r;-><init>(Lcom/twitter/model/moments/viewmodels/q;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/v;->e()Lcom/twitter/model/moments/viewmodels/t;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/moments/viewmodels/t;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/twitter/model/moments/viewmodels/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/moments/viewmodels/t;-><init>(Lcom/twitter/model/moments/viewmodels/v;Lcom/twitter/model/moments/viewmodels/u;)V

    return-object v0
.end method
