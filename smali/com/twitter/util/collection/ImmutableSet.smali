.class public abstract Lcom/twitter/util/collection/ImmutableSet;
.super Lcom/twitter/util/collection/ImmutableCollection;
.source "Twttr"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/util/collection/ImmutableCollection",
        "<TT;>;",
        "Ljava/util/Set",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/twitter/util/collection/ImmutableSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/twitter/util/collection/ImmutableSet$EmptyImmutableSet;

    invoke-direct {v0}, Lcom/twitter/util/collection/ImmutableSet$EmptyImmutableSet;-><init>()V

    sput-object v0, Lcom/twitter/util/collection/ImmutableSet;->a:Lcom/twitter/util/collection/ImmutableSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/twitter/util/collection/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Lcom/twitter/util/collection/ImmutableSet;->c()Lcom/twitter/util/collection/ImmutableSet;

    move-result-object p0

    .line 53
    :cond_0
    :goto_0
    return-object p0

    .line 46
    :cond_1
    invoke-static {p0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 49
    invoke-static {p0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableSet;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ImmutableSet;

    move-result-object p0

    goto :goto_0

    .line 50
    :cond_2
    instance-of v0, p0, Lcom/twitter/util/collection/ax;

    if-eqz v0, :cond_3

    .line 51
    new-instance v0, Lcom/twitter/util/collection/ImmutableSet$SortedImmutableSet;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/ImmutableSet$SortedImmutableSet;-><init>(Ljava/util/Set;)V

    move-object p0, v0

    goto :goto_0

    .line 53
    :cond_3
    new-instance v0, Lcom/twitter/util/collection/ImmutableSet$DefaultImmutableSet;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/ImmutableSet$DefaultImmutableSet;-><init>(Ljava/util/Set;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)Lcom/twitter/util/collection/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/twitter/util/collection/ImmutableSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/twitter/util/collection/ImmutableSet$SingletonImmutableSet;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/ImmutableSet$SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c()Lcom/twitter/util/collection/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/twitter/util/collection/ImmutableSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lcom/twitter/util/collection/ImmutableSet;->a:Lcom/twitter/util/collection/ImmutableSet;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ImmutableSet;

    return-object v0
.end method

.method static synthetic d()Lcom/twitter/util/collection/ImmutableSet;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/twitter/util/collection/ImmutableSet;->a:Lcom/twitter/util/collection/ImmutableSet;

    return-object v0
.end method
