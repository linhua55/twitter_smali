.class public Lcom/twitter/model/moments/maker/j;
.super Lcom/twitter/model/moments/maker/ap;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/moments/maker/ap",
        "<",
        "Lcom/twitter/model/moments/maker/h;",
        "Lcom/twitter/model/moments/maker/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/twitter/model/moments/maker/ap;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/twitter/model/moments/maker/j;->e()Lcom/twitter/model/moments/maker/h;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/moments/maker/h;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/model/moments/maker/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/moments/maker/h;-><init>(Lcom/twitter/model/moments/maker/j;Lcom/twitter/model/moments/maker/i;)V

    return-object v0
.end method
