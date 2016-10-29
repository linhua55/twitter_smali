.class public Lcom/twitter/internal/network/p;
.super Lcom/twitter/internal/network/e;
.source "Twttr"


# instance fields
.field private b:Lokhttp3/ao;


# direct methods
.method public constructor <init>(Lcom/twitter/internal/network/f;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/twitter/internal/network/e;-><init>(Lcom/twitter/internal/network/f;)V

    .line 20
    return-void
.end method

.method private declared-synchronized b()Lokhttp3/ao;
    .locals 1

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/internal/network/p;->b:Lokhttp3/ao;

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/twitter/internal/network/p;->a:Lcom/twitter/internal/network/f;

    invoke-virtual {p0, v0}, Lcom/twitter/internal/network/p;->a(Lcom/twitter/internal/network/f;)Lokhttp3/aq;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aq;->a()Lokhttp3/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/internal/network/p;->b:Lokhttp3/ao;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/twitter/internal/network/p;->b:Lokhttp3/ao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/twitter/internal/network/HttpOperation$RequestMethod;Ljava/net/URI;Lcom/twitter/internal/network/i;)Lcom/twitter/internal/network/HttpOperation;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/twitter/internal/network/n;

    invoke-direct {p0}, Lcom/twitter/internal/network/p;->b()Lokhttp3/ao;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/twitter/internal/network/n;-><init>(Lokhttp3/ao;Lcom/twitter/internal/network/HttpOperation$RequestMethod;Ljava/net/URI;Lcom/twitter/internal/network/i;)V

    return-object v0
.end method

.method protected a(Lcom/twitter/internal/network/f;)Lokhttp3/aq;
    .locals 6

    .prologue
    .line 47
    new-instance v0, Lokhttp3/aq;

    invoke-direct {v0}, Lokhttp3/aq;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/twitter/internal/network/f;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/aq;->a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/aq;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/twitter/internal/network/f;->b()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/aq;->c(JLjava/util/concurrent/TimeUnit;)Lokhttp3/aq;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/twitter/internal/network/f;->b()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/aq;->b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/aq;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lcom/twitter/internal/network/f;->a()Lcom/twitter/internal/network/j;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/twitter/internal/network/p;->a:Lcom/twitter/internal/network/f;

    invoke-virtual {v2}, Lcom/twitter/internal/network/f;->e()Ljava/io/File;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    new-instance v3, Lokhttp3/d;

    iget-object v4, p0, Lcom/twitter/internal/network/p;->a:Lcom/twitter/internal/network/f;

    invoke-virtual {v4}, Lcom/twitter/internal/network/f;->d()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v3, v2, v4, v5}, Lokhttp3/d;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v3}, Lokhttp3/aq;->a(Lokhttp3/d;)Lokhttp3/aq;

    .line 59
    :cond_0
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/twitter/internal/network/j;->b:Z

    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {v1}, Lcom/twitter/internal/network/j;->a()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/aq;->a(Ljava/net/Proxy;)Lokhttp3/aq;

    .line 62
    :cond_1
    return-object v0
.end method

.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/internal/network/p;->b:Lokhttp3/ao;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/twitter/internal/network/p;->b:Lokhttp3/ao;

    invoke-virtual {v0}, Lokhttp3/ao;->t()Lokhttp3/ad;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ad;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 38
    iget-object v0, p0, Lcom/twitter/internal/network/p;->b:Lokhttp3/ao;

    invoke-virtual {v0}, Lokhttp3/ao;->p()Lokhttp3/v;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/v;->a()V

    .line 39
    iget-object v0, p0, Lcom/twitter/internal/network/p;->b:Lokhttp3/ao;

    invoke-virtual {v0}, Lokhttp3/ao;->g()Lokhttp3/d;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lday;->a(Ljava/io/Closeable;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/internal/network/p;->b:Lokhttp3/ao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
