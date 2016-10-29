.class public final Ldlf;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()Lrx/ao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/ao",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Ldkz;->a()Lrx/r;

    move-result-object v0

    invoke-static {v0}, Ldlf;->a(Lrx/r;)Lrx/ao;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/ao;)Lrx/ao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/ao",
            "<-TT;>;)",
            "Lrx/ao",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Ldlh;

    invoke-direct {v0, p0, p0}, Ldlh;-><init>(Lrx/ao;Lrx/ao;)V

    return-object v0
.end method

.method public static a(Lrx/r;)Lrx/ao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/r",
            "<-TT;>;)",
            "Lrx/ao",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ldlg;

    invoke-direct {v0, p0}, Ldlg;-><init>(Lrx/r;)V

    return-object v0
.end method
