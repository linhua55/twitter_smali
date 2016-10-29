.class public abstract Lcom/twitter/util/collection/ImmutableList;
.super Lcom/twitter/util/collection/ImmutableCollection;
.source "Twttr"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/util/collection/ImmutableCollection",
        "<TT;>;",
        "Ljava/util/List",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/twitter/util/collection/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/twitter/util/collection/ImmutableList$EmptyImmutableList;

    invoke-direct {v0}, Lcom/twitter/util/collection/ImmutableList$EmptyImmutableList;-><init>()V

    sput-object v0, Lcom/twitter/util/collection/ImmutableList;->a:Lcom/twitter/util/collection/ImmutableList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/twitter/util/collection/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-static {}, Lcom/twitter/util/collection/ImmutableList;->c()Lcom/twitter/util/collection/ImmutableList;

    move-result-object p0

    .line 82
    :cond_0
    :goto_0
    return-object p0

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 72
    invoke-static {p0}, Lcom/twitter/util/collection/CollectionUtils;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableList;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ImmutableList;

    move-result-object p0

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {p0}, Lcom/twitter/util/collection/CollectionUtils;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    instance-of v0, p0, Lcom/twitter/util/collection/ax;

    if-eqz v0, :cond_3

    .line 75
    new-instance v0, Lcom/twitter/util/collection/ImmutableList$RandomAccessSortedImmutableList;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/ImmutableList$RandomAccessSortedImmutableList;-><init>(Ljava/util/List;)V

    move-object p0, v0

    goto :goto_0

    .line 77
    :cond_3
    new-instance v0, Lcom/twitter/util/collection/ImmutableList$RandomAccessDefaultImmutableList;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/ImmutableList$RandomAccessDefaultImmutableList;-><init>(Ljava/util/List;)V

    move-object p0, v0

    goto :goto_0

    .line 79
    :cond_4
    instance-of v0, p0, Lcom/twitter/util/collection/ax;

    if-eqz v0, :cond_5

    .line 80
    new-instance v0, Lcom/twitter/util/collection/ImmutableList$SortedImmutableList;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/ImmutableList$SortedImmutableList;-><init>(Ljava/util/List;)V

    move-object p0, v0

    goto :goto_0

    .line 82
    :cond_5
    new-instance v0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;-><init>(Ljava/util/List;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
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
    .line 50
    invoke-static {p0}, Lcom/twitter/util/collection/CollectionUtils;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Lcom/twitter/util/collection/ImmutableList;->c()Lcom/twitter/util/collection/ImmutableList;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 53
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/twitter/util/collection/ImmutableList;->b(Ljava/lang/Object;)Lcom/twitter/util/collection/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/twitter/util/collection/ImmutableList$DefaultImmutableList;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)Lcom/twitter/util/collection/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/twitter/util/collection/ImmutableList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;

    invoke-direct {v0, p0}, Lcom/twitter/util/collection/ImmutableList$SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static c()Lcom/twitter/util/collection/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/twitter/util/collection/ImmutableList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/twitter/util/collection/ImmutableList;->a:Lcom/twitter/util/collection/ImmutableList;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ImmutableList;

    return-object v0
.end method

.method static synthetic d()Lcom/twitter/util/collection/ImmutableList;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/twitter/util/collection/ImmutableList;->a:Lcom/twitter/util/collection/ImmutableList;

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
