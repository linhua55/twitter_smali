.class Lcom/twitter/model/moments/maker/v;
.super Lcom/twitter/model/moments/maker/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/moments/maker/ae",
        "<",
        "Lcom/twitter/model/moments/maker/s;",
        "Lcom/twitter/model/moments/maker/u;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/twitter/model/moments/maker/ae;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/twitter/model/moments/maker/u;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/twitter/model/moments/maker/u;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/u;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/twitter/model/moments/maker/v;->a()Lcom/twitter/model/moments/maker/u;

    move-result-object v0

    return-object v0
.end method
