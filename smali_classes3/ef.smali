.class public Lef;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Ldv;Leh;)Lej;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldv",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;",
            "Leh;",
            ")",
            "Lej",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lcom/facebook/imagepipeline/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    invoke-interface {p1, p0}, Leh;->b(Ldv;)V

    .line 23
    new-instance v0, Leg;

    invoke-direct {v0, p1}, Leg;-><init>(Leh;)V

    .line 40
    new-instance v1, Lei;

    invoke-direct {v1, p0, v0}, Lei;-><init>(Lej;Lel;)V

    return-object v1
.end method
