.class public abstract Lfh;
.super Lcom/facebook/datasource/AbstractDataSource;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/datasource/AbstractDataSource",
        "<TT;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/ce;

.field private final b:Lft;


# direct methods
.method protected constructor <init>(Lcom/facebook/imagepipeline/producers/bw;Lcom/facebook/imagepipeline/producers/ce;Lft;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/bw",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/producers/ce;",
            "Lft;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/facebook/datasource/AbstractDataSource;-><init>()V

    .line 38
    iput-object p2, p0, Lfh;->a:Lcom/facebook/imagepipeline/producers/ce;

    .line 39
    iput-object p3, p0, Lfh;->b:Lft;

    .line 40
    iget-object v0, p0, Lfh;->b:Lft;

    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/ce;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    iget-object v2, p0, Lfh;->a:Lcom/facebook/imagepipeline/producers/ce;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/ce;->d()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lfh;->a:Lcom/facebook/imagepipeline/producers/ce;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/ce;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfh;->a:Lcom/facebook/imagepipeline/producers/ce;

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/producers/ce;->f()Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lft;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 45
    invoke-direct {p0}, Lfh;->j()Lcom/facebook/imagepipeline/producers/o;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/facebook/imagepipeline/producers/bw;->a(Lcom/facebook/imagepipeline/producers/o;Lcom/facebook/imagepipeline/producers/bx;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lfh;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lfh;->k()V

    return-void
.end method

.method static synthetic a(Lfh;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lfh;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lfh;F)Z
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lfh;->a(F)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/facebook/datasource/AbstractDataSource;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lfh;->b:Lft;

    iget-object v1, p0, Lfh;->a:Lcom/facebook/imagepipeline/producers/ce;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/ce;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    iget-object v2, p0, Lfh;->a:Lcom/facebook/imagepipeline/producers/ce;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/ce;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfh;->a:Lcom/facebook/imagepipeline/producers/ce;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/ce;->f()Z

    move-result v3

    invoke-interface {v0, v1, v2, p1, v3}, Lft;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 91
    :cond_0
    return-void
.end method

.method private j()Lcom/facebook/imagepipeline/producers/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/producers/o",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lfi;

    invoke-direct {v0, p0}, Lfi;-><init>(Lfh;)V

    return-object v0
.end method

.method private declared-synchronized k()V
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lfh;->a()Z

    move-result v0

    invoke-static {v0}, Lbk;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected b(Ljava/lang/Object;Z)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/facebook/datasource/AbstractDataSource;->a(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    if-eqz p2, :cond_0

    .line 75
    iget-object v0, p0, Lfh;->b:Lft;

    iget-object v1, p0, Lfh;->a:Lcom/facebook/imagepipeline/producers/ce;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/ce;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v1

    iget-object v2, p0, Lfh;->a:Lcom/facebook/imagepipeline/producers/ce;

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/producers/ce;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lfh;->a:Lcom/facebook/imagepipeline/producers/ce;

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/producers/ce;->f()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lft;->a(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Z)V

    .line 81
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-super {p0}, Lcom/facebook/datasource/AbstractDataSource;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lfh;->b:Lft;

    iget-object v1, p0, Lfh;->a:Lcom/facebook/imagepipeline/producers/ce;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/producers/ce;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lft;->a(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lfh;->a:Lcom/facebook/imagepipeline/producers/ce;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/producers/ce;->i()V

    .line 106
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
