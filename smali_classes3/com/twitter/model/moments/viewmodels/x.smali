.class public Lcom/twitter/model/moments/viewmodels/x;
.super Lcom/twitter/model/moments/viewmodels/ag;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/moments/viewmodels/ag",
        "<",
        "Lcom/twitter/model/moments/viewmodels/w;",
        "Lcom/twitter/model/moments/viewmodels/x;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/twitter/model/moments/viewmodels/ag;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/af;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/ag;-><init>(Lcom/twitter/model/moments/viewmodels/af;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/x;->e()Lcom/twitter/model/moments/viewmodels/w;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/moments/viewmodels/w;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/twitter/model/moments/viewmodels/w;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/w;-><init>(Lcom/twitter/model/moments/viewmodels/x;)V

    return-object v0
.end method
