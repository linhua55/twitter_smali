.class public Led;
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
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lee;

    invoke-direct {v0}, Lee;-><init>()V

    .line 31
    new-instance v1, Lem;

    invoke-direct {v1}, Lem;-><init>()V

    .line 33
    new-instance v2, Ldv;

    invoke-direct {v2, v0, v1, p0}, Ldv;-><init>(Leq;Ldy;Lbm;)V

    .line 36
    invoke-interface {p1, v2}, Lcom/facebook/common/memory/b;->a(Lcom/facebook/common/memory/a;)V

    .line 38
    return-object v2
.end method
