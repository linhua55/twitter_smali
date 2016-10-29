.class public Lcom/twitter/model/moments/maker/d;
.super Lcom/twitter/model/moments/maker/ad;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/moments/maker/ad",
        "<",
        "Lcom/twitter/model/moments/maker/a;",
        "Lcom/twitter/model/moments/maker/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/twitter/model/moments/maker/ad;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/twitter/model/moments/maker/d;->e()Lcom/twitter/model/moments/maker/a;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/moments/maker/a;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/twitter/model/moments/maker/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/moments/maker/a;-><init>(Lcom/twitter/model/moments/maker/d;Lcom/twitter/model/moments/maker/b;)V

    return-object v0
.end method
