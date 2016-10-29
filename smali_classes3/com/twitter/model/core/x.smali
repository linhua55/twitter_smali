.class public Lcom/twitter/model/core/x;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()Lczn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/twitter/model/core/w;",
            ">()",
            "Lczn",
            "<TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/twitter/model/core/z;

    invoke-direct {v0}, Lcom/twitter/model/core/z;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/twitter/model/core/w;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/twitter/model/core/y;

    invoke-direct {v0}, Lcom/twitter/model/core/y;-><init>()V

    invoke-static {p0, v0}, Lczz;->a(Ljava/lang/Iterable;Lczn;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
