.class public Lcom/twitter/model/moments/viewmodels/s;
.super Lcom/twitter/model/moments/viewmodels/r;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/moments/viewmodels/r",
        "<",
        "Lcom/twitter/model/moments/viewmodels/q;",
        "Lcom/twitter/model/moments/viewmodels/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/twitter/model/moments/viewmodels/r;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/q;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/r;-><init>(Lcom/twitter/model/moments/viewmodels/q;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/s;->e()Lcom/twitter/model/moments/viewmodels/q;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/moments/viewmodels/q;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/twitter/model/moments/viewmodels/q;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/q;-><init>(Lcom/twitter/model/moments/viewmodels/r;)V

    return-object v0
.end method
