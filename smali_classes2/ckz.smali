.class public Lckz;
.super Lckn;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckn",
        "<",
        "Lckx",
        "<",
        "Lcom/twitter/model/core/Tweet;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lckm;Lckx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckm;",
            "Lckx",
            "<",
            "Lcom/twitter/model/core/Tweet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lckn;-><init>(Lckm;Lcks;)V

    .line 11
    return-void
.end method
