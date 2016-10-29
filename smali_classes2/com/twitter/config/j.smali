.class public Lcom/twitter/config/j;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/twitter/config/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/twitter/config/p;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Lcom/twitter/config/i;

    invoke-direct {v1, p1}, Lcom/twitter/config/i;-><init>(Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Lcvo;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/twitter/config/o;

    .line 89
    invoke-static {}, Lrx/o;->d()Lrx/o;

    move-result-object v2

    invoke-direct {v0, v2, v1, p0, p1}, Lcom/twitter/config/o;-><init>(Lrx/o;Lcom/twitter/config/i;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :goto_0
    return-object v0

    .line 89
    :cond_0
    new-instance v0, Lcom/twitter/config/p;

    .line 96
    invoke-static {p0}, Lcom/twitter/config/j;->a(Ljava/lang/String;)Lrx/o;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/twitter/config/p;-><init>(Lrx/o;Lcom/twitter/config/i;)V

    goto :goto_0
.end method

.method public static a()Lrx/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/twitter/config/k;

    invoke-direct {v0}, Lcom/twitter/config/k;-><init>()V

    .line 30
    invoke-static {v0}, Lrx/o;->a(Lrx/p;)Lrx/o;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lrx/o;->l()Lrx/o;

    move-result-object v0

    .line 54
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/o",
            "<",
            "Lcom/twitter/config/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/twitter/config/j;->a()Lrx/o;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    .line 66
    invoke-virtual {v1, v0}, Lrx/o;->d(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/config/n;

    invoke-direct {v1, p0}, Lcom/twitter/config/n;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lrx/o;->g()Lrx/o;

    move-result-object v0

    const/4 v1, 0x1

    .line 75
    invoke-virtual {v0, v1}, Lrx/o;->a(I)Ldkv;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ldkv;->q()Lrx/o;

    move-result-object v0

    .line 65
    return-object v0
.end method
