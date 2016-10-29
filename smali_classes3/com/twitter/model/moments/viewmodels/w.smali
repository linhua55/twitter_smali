.class public Lcom/twitter/model/moments/viewmodels/w;
.super Lcom/twitter/model/moments/viewmodels/af;
.source "Twttr"


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/x;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/af;-><init>(Lcom/twitter/model/moments/viewmodels/ag;)V

    .line 13
    return-void
.end method


# virtual methods
.method public c()Lcom/twitter/model/moments/viewmodels/x;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/twitter/model/moments/viewmodels/x;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/x;-><init>(Lcom/twitter/model/moments/viewmodels/af;)V

    return-object v0
.end method

.method public e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->e:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    return-object v0
.end method

.method public synthetic o()Lcom/twitter/model/moments/viewmodels/l;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/w;->c()Lcom/twitter/model/moments/viewmodels/x;

    move-result-object v0

    return-object v0
.end method

.method public synthetic r()Lcom/twitter/model/moments/viewmodels/ag;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/w;->c()Lcom/twitter/model/moments/viewmodels/x;

    move-result-object v0

    return-object v0
.end method
