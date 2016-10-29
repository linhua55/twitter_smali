.class public Ldcn;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Ljava/lang/Object;)Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ldjj",
            "<-",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ldcu;

    invoke-direct {v0, p0}, Ldcu;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a()Ldjk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">()",
            "Ldjk",
            "<TT1;TT2;TT1;>;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ldco;

    invoke-direct {v0}, Ldco;-><init>()V

    return-object v0
.end method

.method public static a(Lrx/o;Ljava/lang/Class;)Lrx/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/o",
            "<TS;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrx/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ldcw;

    invoke-direct {v0, p1}, Ldcw;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lrx/o;->d(Ldjj;)Lrx/o;

    move-result-object v0

    new-instance v1, Ldcv;

    invoke-direct {v1}, Ldcv;-><init>()V

    .line 154
    invoke-virtual {v0, v1}, Lrx/o;->h(Ldjj;)Lrx/o;

    move-result-object v0

    .line 148
    return-object v0
.end method

.method public static a(Lrx/o;)Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/o",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<TT;>;>;)",
            "Lrx/w",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/o;->b(I)Lrx/o;

    move-result-object v0

    invoke-static {}, Lcom/twitter/util/collection/ab;->a()Lcom/twitter/util/collection/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/o;->c(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    invoke-virtual {v0}, Lrx/o;->b()Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lrx/o;Ljava/lang/Object;)Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/o",
            "<TT;>;TT;)",
            "Lrx/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/o;->b(I)Lrx/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/o;->c(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    invoke-virtual {v0}, Lrx/o;->b()Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<IT::",
            "Ljava/lang/Iterable;",
            ">()",
            "Ldjj",
            "<TIT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ldcp;

    invoke-direct {v0}, Ldcp;-><init>()V

    return-object v0
.end method

.method public static c()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ldjj",
            "<",
            "Ljava/lang/Iterable",
            "<TT;>;TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ldcq;

    invoke-direct {v0}, Ldcq;-><init>()V

    return-object v0
.end method

.method public static d()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ldjj",
            "<TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ldcr;

    invoke-direct {v0}, Ldcr;-><init>()V

    return-object v0
.end method

.method public static e()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ldjj",
            "<",
            "Lcom/twitter/util/collection/ab",
            "<TT;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ldcs;

    invoke-direct {v0}, Ldcs;-><init>()V

    return-object v0
.end method

.method public static f()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ldct;

    invoke-direct {v0}, Ldct;-><init>()V

    return-object v0
.end method
