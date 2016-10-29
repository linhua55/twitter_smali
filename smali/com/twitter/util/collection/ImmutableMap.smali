.class public abstract Lcom/twitter/util/collection/ImmutableMap;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/twitter/util/collection/ImmutableMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/twitter/util/collection/ImmutableMap$EmptyImmutableMap;

    invoke-direct {v0}, Lcom/twitter/util/collection/ImmutableMap$EmptyImmutableMap;-><init>()V

    sput-object v0, Lcom/twitter/util/collection/ImmutableMap;->a:Lcom/twitter/util/collection/ImmutableMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/twitter/util/collection/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/twitter/util/collection/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/twitter/util/collection/ImmutableMap;->a:Lcom/twitter/util/collection/ImmutableMap;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ImmutableMap;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/twitter/util/collection/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/twitter/util/collection/ImmutableMap$SingletonImmutableMap;

    invoke-direct {v0, p0, p1}, Lcom/twitter/util/collection/ImmutableMap$SingletonImmutableMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {}, Lcom/twitter/util/collection/ImmutableMap;->a()Lcom/twitter/util/collection/ImmutableMap;

    move-result-object p0

    .line 56
    :cond_0
    :goto_0
    return-object p0

    .line 48
    :cond_1
    invoke-static {p0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 51
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/util/collection/ImmutableMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ImmutableMap;

    move-result-object p0

    goto :goto_0

    .line 53
    :cond_2
    instance-of v0, p0, Lcom/twitter/util/collection/ax;

    if-eqz v0, :cond_3

    .line 54
    new-instance v0, Lcom/twitter/util/collection/ImmutableMap$SortedImmutableMap;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/ImmutableMap$SortedImmutableMap;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    goto :goto_0

    .line 56
    :cond_3
    new-instance v0, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/ImmutableMap$DefaultImmutableMap;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    goto :goto_0
.end method

.method static synthetic b()Lcom/twitter/util/collection/ImmutableMap;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/twitter/util/collection/ImmutableMap;->a:Lcom/twitter/util/collection/ImmutableMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
