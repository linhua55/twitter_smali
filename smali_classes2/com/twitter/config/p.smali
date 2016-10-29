.class public Lcom/twitter/config/p;
.super Lddf;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lddf",
        "<",
        "Lcom/twitter/config/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrx/o;Lcom/twitter/config/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<",
            "Lcom/twitter/config/i;",
            ">;",
            "Lcom/twitter/config/i;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lddf;-><init>(Lrx/o;Ljava/lang/Object;)V

    .line 103
    return-void
.end method
