.class Ltv/periscope/chatman/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltv/periscope/chatman/a;

.field private final b:Ltv/periscope/chatman/f;

.field private volatile c:Z

.field private volatile d:Z


# direct methods
.method public constructor <init>(Ltv/periscope/chatman/a;Ltv/periscope/chatman/f;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Ltv/periscope/chatman/e;->a:Ltv/periscope/chatman/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p2, p0, Ltv/periscope/chatman/e;->b:Ltv/periscope/chatman/f;

    .line 344
    return-void
.end method

.method static synthetic a(Ltv/periscope/chatman/e;)Ltv/periscope/chatman/f;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Ltv/periscope/chatman/e;->b:Ltv/periscope/chatman/f;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 410
    const-string/jumbo v0, "CM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stopping Writer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/chatman/e;->c:Z

    .line 412
    return-void
.end method

.method b()V
    .locals 3

    .prologue
    .line 418
    const-string/jumbo v0, "CM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Terminating Writer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/chatman/e;->d:Z

    .line 420
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 348
    const-wide/16 v0, 0x0

    .line 350
    const-string/jumbo v2, "CM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Writer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " starts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v2, v0

    .line 353
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Ltv/periscope/chatman/e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 401
    :cond_1
    :goto_1
    iget-object v0, p0, Ltv/periscope/chatman/e;->b:Ltv/periscope/chatman/f;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 403
    const-string/jumbo v0, "CM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Writer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ends"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void

    .line 356
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Ltv/periscope/chatman/e;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Ltv/periscope/chatman/e;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->a(Ltv/periscope/chatman/a;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 360
    :cond_3
    :try_start_2
    iget-object v0, p0, Ltv/periscope/chatman/e;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->a(Ltv/periscope/chatman/a;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    const-wide/16 v4, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/chatman/api/WireMessage;

    .line 361
    if-nez v0, :cond_4

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    .line 363
    sub-long v4, v0, v2

    const-wide/16 v6, 0x3a98

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 367
    :try_start_3
    iget-object v4, p0, Ltv/periscope/chatman/e;->b:Ltv/periscope/chatman/f;

    invoke-interface {v4}, Ltv/periscope/chatman/f;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v2, v0

    .line 374
    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    :try_start_4
    const-string/jumbo v1, "CM"

    const-string/jumbo v4, "ping io error"

    invoke-static {v1, v4, v0}, Ldog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    iget-object v0, p0, Ltv/periscope/chatman/e;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->b(Ltv/periscope/chatman/a;)Ltv/periscope/chatman/b;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/chatman/e;->b:Ltv/periscope/chatman/f;

    invoke-virtual {v0, v1}, Ltv/periscope/chatman/b;->a(Ltv/periscope/chatman/f;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 396
    :catch_1
    move-exception v0

    .line 397
    :try_start_5
    const-string/jumbo v0, "CM"

    const-string/jumbo v1, "chatman writer is interrupted"

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ltv/periscope/chatman/e;->b:Ltv/periscope/chatman/f;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 377
    :cond_4
    :try_start_6
    const-string/jumbo v1, "CM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Writer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " polled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Ltv/periscope/chatman/api/WireMessage;->payload:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-boolean v1, p0, Ltv/periscope/chatman/e;->c:Z

    if-eqz v1, :cond_5

    .line 381
    const-string/jumbo v1, "CM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Writer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " stopped after poll"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Ltv/periscope/chatman/e;->a:Ltv/periscope/chatman/a;

    invoke-static {v1}, Ltv/periscope/chatman/a;->a(Ltv/periscope/chatman/a;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingDeque;->offerFirst(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 387
    :cond_5
    :try_start_7
    iget-object v1, p0, Ltv/periscope/chatman/e;->b:Ltv/periscope/chatman/f;

    invoke-interface {v1, v0}, Ltv/periscope/chatman/f;->a(Ltv/periscope/chatman/api/WireMessage;)V

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v0

    move-wide v2, v0

    .line 398
    goto/16 :goto_0

    .line 389
    :catch_2
    move-exception v1

    .line 390
    :try_start_8
    const-string/jumbo v4, "CM"

    const-string/jumbo v5, "write io error"

    invoke-static {v4, v5, v1}, Ldog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    iget-object v1, p0, Ltv/periscope/chatman/e;->a:Ltv/periscope/chatman/a;

    invoke-static {v1}, Ltv/periscope/chatman/a;->a(Ltv/periscope/chatman/a;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Ltv/periscope/chatman/e;->a:Ltv/periscope/chatman/a;

    invoke-static {v0}, Ltv/periscope/chatman/a;->b(Ltv/periscope/chatman/a;)Ltv/periscope/chatman/b;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/chatman/e;->b:Ltv/periscope/chatman/f;

    invoke-virtual {v0, v1}, Ltv/periscope/chatman/b;->a(Ltv/periscope/chatman/f;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1
.end method
