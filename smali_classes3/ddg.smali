.class public Lddg;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lrx/ap;)V
    .locals 1

    .prologue
    .line 10
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lrx/ap;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-interface {p0}, Lrx/ap;->R_()V

    .line 13
    :cond_0
    return-void
.end method
