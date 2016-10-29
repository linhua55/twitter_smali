.class public abstract Lcom/twitter/library/av/playback/bp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/av/playback/AVMediaPlayer;


# instance fields
.field private a:Z

.field protected final c:Lcom/twitter/library/av/playback/ab;

.field protected final d:Lbvr;

.field protected final e:Ljava/lang/String;

.field protected final f:Lcom/twitter/model/av/AVMedia;

.field protected g:Lcom/twitter/library/av/s;

.field protected h:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected volatile i:Lcom/twitter/library/av/playback/ag;

.field protected j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

.field l:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

.field m:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

.field final n:Landroid/os/Handler;

.field private o:Z


# direct methods
.method public constructor <init>(Lcom/twitter/library/av/playback/ac;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;->d:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    iput-object v0, p0, Lcom/twitter/library/av/playback/bp;->k:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    .line 34
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->c:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    iput-object v0, p0, Lcom/twitter/library/av/playback/bp;->l:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    .line 38
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->c:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    iput-object v0, p0, Lcom/twitter/library/av/playback/bp;->m:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    .line 48
    iget-object v0, p1, Lcom/twitter/library/av/playback/ac;->d:Lcom/twitter/library/av/playback/ab;

    iput-object v0, p0, Lcom/twitter/library/av/playback/bp;->c:Lcom/twitter/library/av/playback/ab;

    .line 49
    new-instance v0, Lcom/twitter/library/av/playback/ag;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/ag;-><init>(Lcom/twitter/library/av/playback/AVMediaPlayer;)V

    iput-object v0, p0, Lcom/twitter/library/av/playback/bp;->i:Lcom/twitter/library/av/playback/ag;

    .line 50
    iget-object v0, p1, Lcom/twitter/library/av/playback/ac;->e:Landroid/os/Handler;

    iput-object v0, p0, Lcom/twitter/library/av/playback/bp;->n:Landroid/os/Handler;

    .line 51
    iget-object v0, p1, Lcom/twitter/library/av/playback/ac;->b:Lbvr;

    iput-object v0, p0, Lcom/twitter/library/av/playback/bp;->d:Lbvr;

    .line 52
    iget-object v0, p1, Lcom/twitter/library/av/playback/ac;->a:Lcom/twitter/model/av/AVMedia;

    iput-object v0, p0, Lcom/twitter/library/av/playback/bp;->f:Lcom/twitter/model/av/AVMedia;

    .line 53
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->f:Lcom/twitter/model/av/AVMedia;

    invoke-interface {v0}, Lcom/twitter/model/av/AVMedia;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/av/playback/bp;->e:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->c:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->a(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 347
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->c:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->b(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 348
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->c(Z)V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/av/playback/bp;->a:Z

    .line 305
    return-void
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/twitter/library/av/playback/bp;->a:Z

    return v0
.end method

.method public C()V
    .locals 2

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/library/av/playback/bp;->a:Z

    .line 322
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->J()Lcom/twitter/library/av/playback/ag;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    .line 324
    sget-object v1, Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;->c:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    invoke-virtual {v0, v1}, Lcom/twitter/library/av/playback/ag;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    .line 325
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ag;->a()V

    .line 327
    :cond_0
    return-void
.end method

.method public D()Z
    .locals 2

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/twitter/library/av/playback/bp;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->G()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->a:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()Lcom/twitter/library/av/playback/bl;
    .locals 6

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Lcom/twitter/library/av/playback/bl;

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->d()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->c()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/twitter/library/av/playback/bl;-><init>(JJ)V

    .line 427
    :goto_0
    return-object v0

    .line 424
    :cond_0
    new-instance v0, Lcom/twitter/library/av/playback/bl;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/twitter/library/av/playback/bl;-><init>(JJ)V

    goto :goto_0
.end method

.method public F()V
    .locals 3

    .prologue
    .line 466
    sget-object v0, Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;->b:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    .line 467
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->J()Lcom/twitter/library/av/playback/ag;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ag;->g()V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->d:Lbvr;

    new-instance v1, Lbwb;

    iget-object v2, p0, Lcom/twitter/library/av/playback/bp;->f:Lcom/twitter/model/av/AVMedia;

    invoke-direct {v1, v2}, Lbwb;-><init>(Lcom/twitter/model/av/AVMedia;)V

    invoke-virtual {v0, v1}, Lbvr;->a(Lbvq;)V

    .line 472
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->n()V

    .line 473
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->a(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 474
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->b(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 475
    return-void
.end method

.method protected declared-synchronized G()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;
    .locals 1

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->l:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized H()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->m:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public I()Z
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->G()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->a:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->c:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->d:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized J()Lcom/twitter/library/av/playback/ag;
    .locals 1

    .prologue
    .line 483
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->i:Lcom/twitter/library/av/playback/ag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract a(J)V
.end method

.method protected abstract a(Landroid/content/Context;)V
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/library/av/playback/bp;->o:Z

    .line 332
    iput-object p2, p0, Lcom/twitter/library/av/playback/bp;->j:Ljava/util/Map;

    .line 333
    invoke-direct {p0}, Lcom/twitter/library/av/playback/bp;->a()V

    .line 334
    invoke-virtual {p0, p1}, Lcom/twitter/library/av/playback/bp;->a(Landroid/content/Context;)V

    .line 335
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/twitter/library/av/playback/bp;->h:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 359
    return-void
.end method

.method protected declared-synchronized a(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V
    .locals 1

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/twitter/library/av/playback/bp;->l:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V
    .locals 1

    .prologue
    .line 436
    monitor-enter p0

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->i:Lcom/twitter/library/av/playback/ag;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Lcom/twitter/library/av/playback/ag;

    invoke-direct {v0, p0}, Lcom/twitter/library/av/playback/ag;-><init>(Lcom/twitter/library/av/playback/AVMediaPlayer;)V

    iput-object v0, p0, Lcom/twitter/library/av/playback/bp;->i:Lcom/twitter/library/av/playback/ag;

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->i:Lcom/twitter/library/av/playback/ag;

    .line 441
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    invoke-virtual {v0, p1}, Lcom/twitter/library/av/playback/ag;->a(Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;)V

    .line 444
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ag;->a()V

    .line 445
    return-void

    .line 441
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/twitter/library/av/s;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/twitter/library/av/playback/bp;->g:Lcom/twitter/library/av/s;

    .line 169
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 364
    monitor-enter p0

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->i:Lcom/twitter/library/av/playback/ag;

    .line 366
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/twitter/library/av/playback/bp;->i:Lcom/twitter/library/av/playback/ag;

    .line 367
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ag;->d()V

    .line 374
    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->c:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->a(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 375
    if-eqz p1, :cond_1

    .line 376
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->c:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->b(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->k()V

    .line 379
    return-void

    .line 367
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(ZILjava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->a:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->a(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 152
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->a:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->b(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->c(Z)V

    .line 154
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->g:Lcom/twitter/library/av/s;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->g:Lcom/twitter/library/av/s;

    invoke-interface {v0, p2, p3}, Lcom/twitter/library/av/s;->a(ILjava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method

.method public b()Lcom/twitter/library/av/playback/ab;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->c:Lcom/twitter/library/av/playback/ab;

    return-object v0
.end method

.method public b(J)V
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->c(Z)V

    .line 283
    invoke-virtual {p0, p1, p2}, Lcom/twitter/library/av/playback/bp;->a(J)V

    .line 288
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->c()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->G()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    .line 289
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->h:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->a(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 290
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->h:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->b(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 291
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->h:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->h:Landroid/media/MediaPlayer$OnCompletionListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 296
    :cond_0
    return-void
.end method

.method protected declared-synchronized b(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V
    .locals 1

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/twitter/library/av/playback/bp;->m:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->G()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v0

    .line 392
    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->g:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-ne v0, v1, :cond_3

    .line 394
    :cond_0
    sget-object v0, Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;->b:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    .line 401
    :goto_0
    iput-object v0, p0, Lcom/twitter/library/av/playback/bp;->k:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    .line 403
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    if-eqz p1, :cond_1

    .line 405
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/library/av/playback/bp;->b(J)V

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->i()V

    .line 409
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->a(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 410
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->m()V

    .line 412
    :cond_2
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->b(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 413
    return-void

    .line 395
    :cond_3
    if-eqz p1, :cond_4

    .line 396
    sget-object v0, Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;->a:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    goto :goto_0

    .line 398
    :cond_4
    sget-object v0, Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;->d:Lcom/twitter/library/av/playback/AVPlayer$PlayerStartType;

    goto :goto_0
.end method

.method protected abstract c()J
.end method

.method protected c(Z)V
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->J()Lcom/twitter/library/av/playback/ag;

    move-result-object v0

    .line 453
    if-nez v0, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ag;->c()V

    .line 459
    if-eqz p1, :cond_0

    .line 460
    invoke-virtual {v0}, Lcom/twitter/library/av/playback/ag;->f()V

    goto :goto_0
.end method

.method protected abstract d()J
.end method

.method protected abstract g()Z
.end method

.method protected abstract i()V
.end method

.method protected abstract j()V
.end method

.method protected abstract k()V
.end method

.method protected abstract m()V
.end method

.method protected abstract n()V
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->G()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->w()Z

    move-result v2

    .line 215
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->m:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    sget-object v3, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->l:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    sget-object v3, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->f:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-eq v0, v3, :cond_4

    const/4 v0, 0x1

    .line 216
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->t()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    .line 217
    :cond_0
    if-nez v2, :cond_1

    .line 218
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->g:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->a(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 220
    :cond_1
    sget-object v0, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->g:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    invoke-virtual {p0, v0}, Lcom/twitter/library/av/playback/bp;->b(Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;)V

    .line 221
    invoke-virtual {p0, v1}, Lcom/twitter/library/av/playback/bp;->c(Z)V

    .line 223
    if-nez v2, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->j()V

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->g:Lcom/twitter/library/av/s;

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/twitter/library/av/playback/bp;->g:Lcom/twitter/library/av/s;

    invoke-interface {v0}, Lcom/twitter/library/av/s;->j()V

    .line 230
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 215
    goto :goto_0
.end method

.method public v()Z
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->G()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->g:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Z
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->G()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->d:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x()Z
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->G()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v0

    .line 257
    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->e:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->d:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()Z
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->G()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->a:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public z()Z
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/twitter/library/av/playback/bp;->G()Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;->h:Lcom/twitter/library/av/playback/AVMediaPlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
