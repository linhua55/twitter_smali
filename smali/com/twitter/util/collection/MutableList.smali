.class public abstract Lcom/twitter/util/collection/MutableList;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/twitter/util/collection/MutableList;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    if-lez p0, :cond_0

    new-instance v0, Lcom/twitter/util/collection/MutableList$ExternalizableArrayList;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/MutableList$ExternalizableArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/util/collection/MutableList$ExternalizableArrayList;

    invoke-direct {v0}, Lcom/twitter/util/collection/MutableList$ExternalizableArrayList;-><init>()V

    goto :goto_0
.end method

.method public static a(Ljava/util/Comparator;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    if-lez p1, :cond_0

    new-instance v0, Lcom/twitter/util/collection/MutableList$SortedArrayList;

    invoke-direct {v0, p0, p1}, Lcom/twitter/util/collection/MutableList$SortedArrayList;-><init>(Ljava/util/Comparator;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/util/collection/MutableList$SortedArrayList;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/MutableList$SortedArrayList;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 140
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/twitter/util/collection/ImmutableList;->c()Lcom/twitter/util/collection/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/util/Comparator;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    if-lez p1, :cond_0

    new-instance v0, Lcom/twitter/util/collection/MutableList$UniqueSortedArrayList;

    invoke-direct {v0, p0, p1}, Lcom/twitter/util/collection/MutableList$UniqueSortedArrayList;-><init>(Ljava/util/Comparator;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/util/collection/MutableList$UniqueSortedArrayList;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/MutableList$UniqueSortedArrayList;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method
