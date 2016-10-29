.class public abstract Lcom/twitter/util/collection/MutableSet;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/twitter/util/collection/MutableSet;->a(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    if-lez p0, :cond_0

    new-instance v0, Lcom/twitter/util/collection/MutableSet$ExternalizableHashSet;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/MutableSet$ExternalizableHashSet;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/util/collection/MutableSet$ExternalizableHashSet;

    invoke-direct {v0}, Lcom/twitter/util/collection/MutableSet$ExternalizableHashSet;-><init>()V

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    invoke-static {}, Lcom/twitter/util/collection/MutableSet;->a()Ljava/util/Set;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/MutableSet;->a(I)Ljava/util/Set;

    move-result-object v0

    .line 55
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static a(Ljava/util/Comparator;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/twitter/util/collection/MutableSet$ExternalizableTreeSet;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/MutableSet$ExternalizableTreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
