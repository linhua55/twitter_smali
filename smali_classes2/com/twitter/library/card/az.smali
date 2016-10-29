.class public Lcom/twitter/library/card/az;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/twitter/library/card/bb;

.field private c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/twitter/library/card/bb;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/twitter/library/card/az;->a:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/twitter/library/card/az;->b:Lcom/twitter/library/card/bb;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/twitter/library/card/az;)Lcom/twitter/library/card/bb;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/twitter/library/card/az;->b:Lcom/twitter/library/card/bb;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/library/card/az;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/twitter/library/card/az;->f()V

    return-void
.end method

.method private e()V
    .locals 8

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/library/card/az;->b:Lcom/twitter/library/card/bb;

    invoke-interface {v0}, Lcom/twitter/library/card/bb;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/twitter/library/card/az;->b:Lcom/twitter/library/card/bb;

    invoke-interface {v0}, Lcom/twitter/library/card/bb;->d()I

    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 44
    iget-object v7, p0, Lcom/twitter/library/card/az;->a:Ljava/lang/Object;

    monitor-enter v7

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/card/az;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/card/az;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 47
    iget-object v0, p0, Lcom/twitter/library/card/az;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/twitter/library/card/ba;

    invoke-direct {v1, p0}, Lcom/twitter/library/card/ba;-><init>(Lcom/twitter/library/card/az;)V

    const-wide/16 v2, 0x0

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 59
    :cond_0
    monitor-exit v7

    .line 62
    :cond_1
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 65
    iget-object v1, p0, Lcom/twitter/library/card/az;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/card/az;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/twitter/library/card/az;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/library/card/az;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 70
    :cond_0
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/twitter/library/card/az;->e()V

    .line 25
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/twitter/library/card/az;->f()V

    .line 29
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/twitter/library/card/az;->e()V

    .line 33
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/twitter/library/card/az;->f()V

    .line 37
    return-void
.end method
