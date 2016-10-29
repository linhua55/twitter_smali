.class public Lcom/twitter/android/moments/data/ac;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcet;J)V
    .locals 3

    .prologue
    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    invoke-static {}, Ldls;->d()Lrx/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/t;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/data/ad;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/data/ad;-><init>(Lcet;)V

    invoke-virtual {v0, v1}, Lrx/o;->c(Ldjf;)Lrx/ap;

    .line 28
    return-void
.end method
