.class public Lcom/facebook/datasource/e;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Ljava/lang/Throwable;)Lcom/facebook/datasource/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/facebook/datasource/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {}, Lcom/facebook/datasource/o;->j()Lcom/facebook/datasource/o;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lcom/facebook/datasource/o;->a(Ljava/lang/Throwable;)Z

    .line 26
    return-object v0
.end method

.method public static b(Ljava/lang/Throwable;)Lbm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lbm",
            "<",
            "Lcom/facebook/datasource/d",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/facebook/datasource/f;

    invoke-direct {v0, p0}, Lcom/facebook/datasource/f;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
