.class public abstract Lcom/twitter/util/collection/MutableMap;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/twitter/util/collection/MutableMap;->a(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 48
    if-lez p0, :cond_0

    new-instance v0, Lcom/twitter/util/collection/MutableMap$ExternalizableHashMap;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/MutableMap$ExternalizableHashMap;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/util/collection/MutableMap$ExternalizableHashMap;

    invoke-direct {v0}, Lcom/twitter/util/collection/MutableMap$ExternalizableHashMap;-><init>()V

    goto :goto_0
.end method

.method public static a(Ljava/util/Comparator;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/twitter/util/collection/MutableMap$ExternalizableTreeMap;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/MutableMap$ExternalizableTreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<TK;>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Lcom/twitter/util/object/ObjectUtils;->b()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/MutableMap;->a(Ljava/util/Comparator;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 84
    if-lez p0, :cond_0

    new-instance v0, Lcom/twitter/util/collection/MutableMap$ExternalizableLinkedHashMap;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/MutableMap$ExternalizableLinkedHashMap;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/util/collection/MutableMap$ExternalizableLinkedHashMap;

    invoke-direct {v0}, Lcom/twitter/util/collection/MutableMap$ExternalizableLinkedHashMap;-><init>()V

    goto :goto_0
.end method

.method public static c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/twitter/util/collection/MutableMap;->b(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
