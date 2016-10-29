.class public Ltn;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:J

.field private volatile b:J

.field private volatile c:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltn;->c:J

    .line 19
    iput-wide p1, p0, Ltn;->a:J

    .line 20
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 41
    iget-wide v0, p0, Ltn;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 42
    iget-wide v0, p0, Ltn;->b:J

    iput-wide v0, p0, Ltn;->c:J

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ltn;->f()V

    .line 35
    return-void
.end method

.method public declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Ltn;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .locals 4

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ltn;->f()V

    .line 52
    iget-wide v0, p0, Ltn;->b:J

    iget-wide v2, p0, Ltn;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Ltn;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Ltn;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const/4 v0, 0x1

    .line 57
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ltn;->b:J

    iput-wide v0, p0, Ltn;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()J
    .locals 2

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ltn;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltn;->b:J

    .line 89
    return-void
.end method
