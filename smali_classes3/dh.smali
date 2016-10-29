.class public Ldh;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lbm;Lcom/facebook/common/memory/b;)Ldv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm",
            "<",
            "Lek;",
            ">;",
            "Lcom/facebook/common/memory/b;",
            ")",
            "Ldv",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lfm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Ldi;

    invoke-direct {v0}, Ldi;-><init>()V

    .line 30
    new-instance v1, Ldm;

    invoke-direct {v1}, Ldm;-><init>()V

    .line 32
    new-instance v2, Ldv;

    invoke-direct {v2, v0, v1, p0}, Ldv;-><init>(Leq;Ldy;Lbm;)V

    .line 35
    invoke-interface {p1, v2}, Lcom/facebook/common/memory/b;->a(Lcom/facebook/common/memory/a;)V

    .line 37
    return-object v2
.end method
