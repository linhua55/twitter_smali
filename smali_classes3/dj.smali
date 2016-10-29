.class public Ldj;
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
            "Lfm;",
            ">;",
            "Leh;",
            ")",
            "Lej",
            "<",
            "Lcom/facebook/cache/common/a;",
            "Lfm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    invoke-interface {p1, p0}, Leh;->a(Ldv;)V

    .line 23
    new-instance v0, Ldk;

    invoke-direct {v0, p1}, Ldk;-><init>(Leh;)V

    .line 40
    new-instance v1, Lei;

    invoke-direct {v1, p0, v0}, Lei;-><init>(Lej;Lel;)V

    return-object v1
.end method
