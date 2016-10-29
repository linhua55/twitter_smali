.class public final Lcmk;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Lcmf;Lcmf;)Lcmf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcmf",
            "<+TT;>;",
            "Lcmf",
            "<+TT;>;)",
            "Lcmf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcml;

    invoke-direct {v0, p0, p1}, Lcml;-><init>(Lcmf;Lcmf;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lcmf;)Lcmf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcmf",
            "<+TT;>;)",
            "Lcmf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Lcmo;

    invoke-virtual {p1}, Lcmf;->bb_()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-direct {v1, v0}, Lcmo;-><init>(Ljava/lang/Iterable;)V

    return-object v1
.end method

.method public static a()Ldjk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ldjk",
            "<",
            "Lcmf",
            "<TT;>;",
            "Lcmf",
            "<TT;>;",
            "Lcmf",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcmm;

    invoke-direct {v0}, Lcmm;-><init>()V

    return-object v0
.end method

.method public static a(Lcmf;)Z
    .locals 1

    .prologue
    .line 27
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcmf;->bb_()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ldjk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ldjk",
            "<",
            "Lcmf",
            "<TT;>;TT;",
            "Lcmf",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcmn;

    invoke-direct {v0}, Lcmn;-><init>()V

    return-object v0
.end method
