.class public Ldbz;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcom/twitter/util/concurrent/j;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/twitter/util/concurrent/j",
            "<TT;>;)",
            "Lrx/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ldca;

    invoke-direct {v0, p0}, Ldca;-><init>(Lcom/twitter/util/concurrent/j;)V

    invoke-static {v0}, Lrx/w;->a(Lrx/am;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ldlx;Lcom/twitter/util/concurrent/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldlx;",
            "Lcom/twitter/util/concurrent/j",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p1}, Ldmc;->a(Ljava/util/concurrent/Future;)Lrx/ap;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Ldlx;->a(Lrx/ap;)V

    .line 62
    new-instance v1, Ldce;

    invoke-direct {v1, p0, v0}, Ldce;-><init>(Ldlx;Lrx/ap;)V

    invoke-interface {p1, v1}, Lcom/twitter/util/concurrent/j;->a(Lcom/twitter/util/concurrent/e;)Lcom/twitter/util/concurrent/j;

    .line 68
    return-void
.end method
