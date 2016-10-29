.class public Lcom/twitter/model/moments/viewmodels/ah;
.super Lcom/twitter/model/moments/viewmodels/ag;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/moments/viewmodels/ag",
        "<",
        "Lcom/twitter/model/moments/viewmodels/af;",
        "Lcom/twitter/model/moments/viewmodels/ah;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/twitter/model/moments/viewmodels/ag;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/af;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/ag;-><init>(Lcom/twitter/model/moments/viewmodels/af;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/ah;->e()Lcom/twitter/model/moments/viewmodels/af;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/moments/viewmodels/af;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/twitter/model/moments/viewmodels/af;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/af;-><init>(Lcom/twitter/model/moments/viewmodels/ag;)V

    return-object v0
.end method
