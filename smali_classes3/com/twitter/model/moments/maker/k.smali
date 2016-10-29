.class Lcom/twitter/model/moments/maker/k;
.super Lcom/twitter/model/moments/maker/aq;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/moments/maker/aq",
        "<",
        "Lcom/twitter/model/moments/maker/h;",
        "Lcom/twitter/model/moments/maker/j;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/twitter/model/moments/maker/aq;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/moments/maker/j;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/twitter/model/moments/maker/j;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/j;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/twitter/model/moments/maker/k;->a()Lcom/twitter/model/moments/maker/j;

    move-result-object v0

    return-object v0
.end method
