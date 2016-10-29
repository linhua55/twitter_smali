.class public Lrx/internal/operators/ec;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a([Lrx/w;Ldjl;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/w",
            "<+TT;>;",
            "Ldjl",
            "<+TR;>;)",
            "Lrx/w",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lrx/internal/operators/ed;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/ed;-><init>([Lrx/w;Ldjl;)V

    invoke-static {v0}, Lrx/w;->a(Lrx/am;)Lrx/w;

    move-result-object v0

    return-object v0
.end method
