.class Lcom/twitter/model/moments/maker/c;
.super Lcom/twitter/model/moments/maker/ae;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/model/moments/maker/ae",
        "<",
        "Lcom/twitter/model/moments/maker/a;",
        "Lcom/twitter/model/moments/maker/d;",
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
.method protected a()Lcom/twitter/model/moments/maker/d;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/twitter/model/moments/maker/d;

    invoke-direct {v0}, Lcom/twitter/model/moments/maker/d;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Lcom/twitter/util/object/h;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/twitter/model/moments/maker/c;->a()Lcom/twitter/model/moments/maker/d;

    move-result-object v0

    return-object v0
.end method
