.class final Lrx/internal/operators/CachedObservable$ReplayProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "Twttr"

# interfaces
.implements Lrx/ap;
.implements Lrx/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/ap;",
        "Lrx/s;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x237e491daced6e1dL


# instance fields
.field final child:Lrx/ao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/ao",
            "<-TT;>;"
        }
    .end annotation
.end field

.field currentBuffer:[Ljava/lang/Object;

.field currentIndexInBuffer:I

.field emitting:Z

.field index:I

.field missed:Z

.field final state:Lrx/internal/operators/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/ao;Lrx/internal/operators/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/ao",
            "<-TT;>;",
            "Lrx/internal/operators/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 292
    iput-object p1, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->child:Lrx/ao;

    .line 293
    iput-object p2, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/b;

    .line 294
    return-void
.end method


# virtual methods
.method public R_()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 327
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    .line 328
    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 329
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CachedObservable$ReplayProducer;->getAndSet(J)J

    move-result-wide v0

    .line 330
    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 331
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/b;

    invoke-virtual {v0, p0}, Lrx/internal/operators/b;->b(Lrx/internal/operators/CachedObservable$ReplayProducer;)V

    .line 334
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v2

    .line 299
    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    .line 308
    :goto_0
    return-void

    .line 302
    :cond_1
    add-long v0, v2, p1

    .line 303
    cmp-long v4, v0, v6

    if-gez v4, :cond_2

    .line 304
    const-wide v0, 0x7fffffffffffffffL

    .line 306
    :cond_2
    invoke-virtual {p0, v2, v3, v0, v1}, Lrx/internal/operators/CachedObservable$ReplayProducer;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->c()V

    goto :goto_0
.end method

.method public b(J)J
    .locals 3

    .prologue
    .line 318
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/CachedObservable$ReplayProducer;->addAndGet(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 323
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 15

    .prologue
    .line 341
    monitor-enter p0

    .line 342
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    if-eqz v0, :cond_1

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    .line 344
    monitor-exit p0

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 347
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 348
    const/4 v1, 0x0

    .line 350
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/b;

    iget-object v8, v0, Lrx/internal/operators/b;->e:Lrx/internal/operators/NotificationLite;

    .line 351
    iget-object v9, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->child:Lrx/ao;

    .line 355
    :goto_1
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->get()J

    move-result-wide v6

    .line 357
    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-ltz v0, :cond_0

    .line 364
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/b;

    invoke-virtual {v0}, Lrx/internal/operators/b;->e()I

    move-result v10

    .line 365
    if-eqz v10, :cond_9

    .line 366
    iget-object v4, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 369
    if-nez v4, :cond_2

    .line 370
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->state:Lrx/internal/operators/b;

    invoke-virtual {v0}, Lrx/internal/operators/b;->d()[Ljava/lang/Object;

    move-result-object v4

    .line 371
    iput-object v4, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 373
    :cond_2
    array-length v0, v4

    add-int/lit8 v11, v0, -0x1

    .line 374
    iget v3, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->index:I

    .line 375
    iget v2, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentIndexInBuffer:I

    .line 377
    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-nez v0, :cond_5

    .line 378
    aget-object v0, v4, v2

    .line 379
    invoke-virtual {v8, v0}, Lrx/internal/operators/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 380
    invoke-virtual {v9}, Lrx/ao;->bt_()V

    .line 381
    const/4 v1, 0x1

    .line 382
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->R_()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    if-nez v1, :cond_3

    .line 451
    monitor-enter p0

    .line 452
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 453
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_3
    throw v0

    .line 347
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 385
    :cond_4
    :try_start_4
    invoke-virtual {v8, v0}, Lrx/internal/operators/NotificationLite;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 386
    invoke-virtual {v8, v0}, Lrx/internal/operators/NotificationLite;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v9, v0}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    .line 387
    const/4 v1, 0x1

    .line 388
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->R_()V

    goto :goto_0

    .line 392
    :cond_5
    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-lez v0, :cond_9

    .line 393
    const/4 v0, 0x0

    move v5, v3

    move v3, v0

    move v0, v2

    move-object v2, v4

    .line 395
    :goto_2
    if-ge v5, v10, :cond_8

    const-wide/16 v12, 0x0

    cmp-long v4, v6, v12

    if-lez v4, :cond_8

    .line 396
    invoke-virtual {v9}, Lrx/ao;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 400
    if-ne v0, v11, :cond_6

    .line 401
    aget-object v0, v2, v11

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 402
    const/4 v2, 0x0

    move v14, v2

    move-object v2, v0

    move v0, v14

    .line 404
    :cond_6
    aget-object v4, v2, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 407
    :try_start_5
    invoke-virtual {v8, v9, v4}, Lrx/internal/operators/NotificationLite;->a(Lrx/r;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 408
    const/4 v1, 0x1

    .line 409
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->R_()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    :try_start_6
    invoke-static {v0}, Lrx/exceptions/e;->a(Ljava/lang/Throwable;)V

    .line 414
    const/4 v1, 0x1

    .line 415
    invoke-virtual {p0}, Lrx/internal/operators/CachedObservable$ReplayProducer;->R_()V

    .line 416
    invoke-virtual {v8, v4}, Lrx/internal/operators/NotificationLite;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v8, v4}, Lrx/internal/operators/NotificationLite;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 417
    invoke-virtual {v8, v4}, Lrx/internal/operators/NotificationLite;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lrx/exceptions/OnErrorThrowable;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v9, v0}, Lrx/ao;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 422
    :cond_7
    add-int/lit8 v4, v0, 0x1

    .line 423
    add-int/lit8 v5, v5, 0x1

    .line 424
    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    .line 425
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    .line 426
    goto :goto_2

    .line 428
    :cond_8
    invoke-virtual {v9}, Lrx/ao;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 433
    iput v5, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->index:I

    .line 434
    iput v0, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentIndexInBuffer:I

    .line 435
    iput-object v2, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->currentBuffer:[Ljava/lang/Object;

    .line 436
    int-to-long v2, v3

    invoke-virtual {p0, v2, v3}, Lrx/internal/operators/CachedObservable$ReplayProducer;->b(J)J

    .line 440
    :cond_9
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 441
    :try_start_7
    iget-boolean v0, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    if-nez v0, :cond_a

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->emitting:Z

    .line 443
    const/4 v1, 0x1

    .line 444
    monitor-exit p0

    goto/16 :goto_0

    .line 447
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 446
    :cond_a
    const/4 v0, 0x0

    :try_start_9
    iput-boolean v0, p0, Lrx/internal/operators/CachedObservable$ReplayProducer;->missed:Z

    .line 447
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_1

    .line 453
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0
.end method
