.class public Lcom/twitter/model/moments/viewmodels/ad;
.super Lcom/twitter/model/moments/viewmodels/z;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/moments/viewmodels/z",
        "<",
        "Lcom/twitter/model/moments/viewmodels/ac;",
        "Lcom/twitter/model/moments/viewmodels/ad;",
        ">;"
    }
.end annotation


# instance fields
.field j:Lcom/twitter/model/moments/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/twitter/model/moments/viewmodels/z;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/moments/viewmodels/ac;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/viewmodels/z;-><init>(Lcom/twitter/model/moments/viewmodels/y;)V

    .line 54
    iget-object v0, p1, Lcom/twitter/model/moments/viewmodels/ac;->a:Lcom/twitter/model/moments/k;

    iput-object v0, p0, Lcom/twitter/model/moments/viewmodels/ad;->j:Lcom/twitter/model/moments/k;

    .line 55
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/k;)Lcom/twitter/model/moments/viewmodels/ad;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/twitter/model/moments/viewmodels/ad;->j:Lcom/twitter/model/moments/k;

    .line 66
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/twitter/model/moments/viewmodels/ad;->e()Lcom/twitter/model/moments/viewmodels/ac;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/moments/viewmodels/ac;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/twitter/model/moments/viewmodels/ac;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/viewmodels/ac;-><init>(Lcom/twitter/model/moments/viewmodels/ad;)V

    return-object v0
.end method
