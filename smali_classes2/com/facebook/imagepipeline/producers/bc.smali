.class public abstract Lcom/facebook/imagepipeline/producers/bc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/bw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T::",
        "Ljava/io/Closeable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/bw",
        "<TT;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Lcom/facebook/imagepipeline/producers/bc",
            "<TK;TT;>.com/facebook/imagepipeline/producers/be;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/producers/bw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/producers/bw",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/producers/bw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/bc;->b:Lcom/facebook/imagepipeline/producers/bw;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/producers/bc;->a:Ljava/util/Map;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/bc;Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/be;
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/bc;->a(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/be;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/be;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/imagepipeline/producers/bc",
            "<TK;TT;>.com/facebook/imagepipeline/producers/be;"
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/bc;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/producers/be;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/bc;)Lcom/facebook/imagepipeline/producers/bw;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/bc;->b:Lcom/facebook/imagepipeline/producers/bw;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/producers/bc;Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/be;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/bc;->a(Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/be;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/Object;Lcom/facebook/imagepipeline/producers/be;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/imagepipeline/producers/bc",
            "<TK;TT;>.com/facebook/imagepipeline/producers/be;)V"
        }
    .end annotation

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/bc;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 103
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/bc;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/be;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/imagepipeline/producers/bc",
            "<TK;TT;>.com/facebook/imagepipeline/producers/be;"
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/facebook/imagepipeline/producers/be;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/be;-><init>(Lcom/facebook/imagepipeline/producers/bc;Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/bc;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract a(Ljava/io/Closeable;)Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public a(Lcom/facebook/imagepipeline/producers/o;Lcom/facebook/imagepipeline/producers/bx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/o",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/producers/bx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p2}, Lcom/facebook/imagepipeline/producers/bc;->b(Lcom/facebook/imagepipeline/producers/bx;)Ljava/lang/Object;

    move-result-object v2

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/producers/bc;->a(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/be;

    move-result-object v1

    .line 76
    if-nez v1, :cond_1

    .line 77
    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/producers/bc;->b(Ljava/lang/Object;)Lcom/facebook/imagepipeline/producers/be;

    move-result-object v1

    .line 78
    const/4 v0, 0x1

    .line 80
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {v1, p1, p2}, Lcom/facebook/imagepipeline/producers/be;->a(Lcom/facebook/imagepipeline/producers/o;Lcom/facebook/imagepipeline/producers/bx;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    invoke-static {v1}, Lcom/facebook/imagepipeline/producers/be;->a(Lcom/facebook/imagepipeline/producers/be;)V

    .line 89
    :cond_2
    return-void

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract b(Lcom/facebook/imagepipeline/producers/bx;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bx;",
            ")TK;"
        }
    .end annotation
.end method
