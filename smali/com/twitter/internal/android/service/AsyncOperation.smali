.class public abstract Lcom/twitter/internal/android/service/AsyncOperation;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/twitter/internal/android/service/c;",
            "Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;

.field private c:Lcom/twitter/internal/android/service/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/internal/android/service/m",
            "<TS;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field f:Lcom/twitter/internal/android/service/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/internal/android/service/ac",
            "<TS;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/Future;

.field private h:I

.field private i:Lcom/twitter/internal/android/service/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/internal/android/service/ab",
            "<TS;>;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

.field private l:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, v0}, Lcom/twitter/internal/android/service/AsyncOperation;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 123
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->a:Ljava/util/List;

    .line 108
    sget-object v0, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->a:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    iput-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->k:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    .line 126
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/twitter/util/aj;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->d:Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/twitter/internal/android/service/AsyncOperation;->e:Ljava/lang/String;

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    .line 129
    iput-object p2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->b:Landroid/os/Handler;

    .line 130
    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/internal/android/service/ac;)Lcom/twitter/internal/android/service/AsyncOperation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/twitter/internal/android/service/AsyncOperation;",
            ">(",
            "Lcom/twitter/internal/android/service/ac",
            "<TS;>;)TE;"
        }
    .end annotation

    .prologue
    .line 241
    iput-object p1, p0, Lcom/twitter/internal/android/service/AsyncOperation;->f:Lcom/twitter/internal/android/service/ac;

    .line 242
    return-object p0
.end method

.method public final a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/twitter/internal/android/service/AsyncOperation",
            "<TT;TS;>;>(",
            "Lcom/twitter/internal/android/service/c",
            "<TT;TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 165
    sget-object v0, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->h:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    invoke-virtual {p0, p1, v0}, Lcom/twitter/internal/android/service/AsyncOperation;->a(Lcom/twitter/internal/android/service/c;Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)Lcom/twitter/internal/android/service/AsyncOperation;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/twitter/internal/android/service/c;Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)Lcom/twitter/internal/android/service/AsyncOperation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/twitter/internal/android/service/AsyncOperation",
            "<TT;TS;>;>(",
            "Lcom/twitter/internal/android/service/c",
            "<TT;TE;>;",
            "Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/twitter/internal/android/service/AsyncOperation;->b(Lcom/twitter/internal/android/service/c;Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)Z

    .line 178
    return-object p0
.end method

.method public a(Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->h:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    if-ne p1, v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Async operations should not run on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/twitter/internal/android/service/AsyncOperation;->k:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    .line 147
    return-void
.end method

.method public final a(Lcom/twitter/internal/android/service/AsyncService;)V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 314
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    .line 315
    if-eqz v1, :cond_0

    sget-object v3, Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;->h:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    if-eq v1, v3, :cond_0

    if-eqz p1, :cond_0

    .line 316
    new-instance v1, Lcom/twitter/internal/android/service/b;

    invoke-direct {v1, p0, v0}, Lcom/twitter/internal/android/service/b;-><init>(Lcom/twitter/internal/android/service/AsyncOperation;Landroid/util/Pair;)V

    invoke-virtual {p1, v1}, Lcom/twitter/internal/android/service/AsyncService;->a(Lcom/twitter/internal/android/service/AsyncOperation;)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/internal/android/service/c;

    invoke-interface {v0, p0}, Lcom/twitter/internal/android/service/c;->a(Lcom/twitter/internal/android/service/AsyncOperation;)V

    goto :goto_0

    .line 321
    :cond_1
    return-void
.end method

.method public a(Lcom/twitter/internal/android/service/ab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/ab",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 425
    return-void
.end method

.method protected final a(Ljava/util/concurrent/Future;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/twitter/internal/android/service/AsyncOperation;->g:Ljava/util/concurrent/Future;

    .line 206
    return-void
.end method

.method protected final declared-synchronized a(Lcom/twitter/internal/android/service/m;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/m",
            "<TS;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 483
    monitor-enter p0

    .line 484
    :try_start_0
    iget v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    packed-switch v2, :pswitch_data_0

    .line 497
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mark RETRY_SCHEDULED. Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 486
    :pswitch_0
    :try_start_1
    iput-object p1, p0, Lcom/twitter/internal/android/service/AsyncOperation;->c:Lcom/twitter/internal/android/service/m;

    .line 487
    const/4 v2, 0x3

    iput v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    move v2, v1

    .line 500
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    if-nez v2, :cond_0

    :goto_1
    monitor-exit p0

    return v0

    :pswitch_1
    move v2, v0

    .line 494
    goto :goto_0

    :cond_0
    move v0, v1

    .line 501
    goto :goto_1

    .line 484
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/twitter/internal/android/service/u;Lcom/twitter/internal/android/service/ab;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 611
    monitor-enter p0

    .line 612
    :try_start_0
    iget v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move v2, v0

    .line 613
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->f:Lcom/twitter/internal/android/service/ac;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->f:Lcom/twitter/internal/android/service/ac;

    .line 617
    invoke-virtual {v2, p1, p2}, Lcom/twitter/internal/android/service/ac;->a(Lcom/twitter/internal/android/service/u;Lcom/twitter/internal/android/service/ab;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 612
    goto :goto_0

    .line 613
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    .line 617
    goto :goto_1
.end method

.method public final b(I)Lcom/twitter/internal/android/service/AsyncOperation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/twitter/internal/android/service/AsyncOperation;",
            ">(I)TE;"
        }
    .end annotation

    .prologue
    .line 134
    iput p1, p0, Lcom/twitter/internal/android/service/AsyncOperation;->j:I

    .line 135
    return-object p0
.end method

.method public b(Lcom/twitter/internal/android/service/ab;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/internal/android/service/ab",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 418
    return-void
.end method

.method protected final b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->b:Landroid/os/Handler;

    new-instance v1, Lcom/twitter/internal/android/service/a;

    invoke-direct {v1, p0, p1}, Lcom/twitter/internal/android/service/a;-><init>(Lcom/twitter/internal/android/service/AsyncOperation;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method protected final b(Lcom/twitter/internal/android/service/c;Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;)Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/twitter/internal/android/service/AsyncOperation",
            "<TT;TS;>;>(",
            "Lcom/twitter/internal/android/service/c",
            "<TT;TE;>;",
            "Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 193
    if-eqz p1, :cond_1

    .line 194
    monitor-enter p0

    .line 195
    :try_start_0
    iget v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->a:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const/4 v0, 0x1

    monitor-exit p0

    .line 201
    :goto_0
    return v0

    .line 199
    :cond_0
    monitor-exit p0

    .line 201
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c(Lcom/twitter/internal/android/service/ab;)Lcom/twitter/internal/android/service/AsyncOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/twitter/internal/android/service/AsyncOperation;",
            ">(",
            "Lcom/twitter/internal/android/service/ab",
            "<TS;>;)TE;"
        }
    .end annotation

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/twitter/internal/android/service/AsyncOperation;->i:Lcom/twitter/internal/android/service/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-object p0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public c(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 303
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/internal/android/service/c;

    invoke-interface {v0, p1, p0}, Lcom/twitter/internal/android/service/c;->a(Ljava/lang/Object;Lcom/twitter/internal/android/service/AsyncOperation;)V

    goto :goto_0

    .line 305
    :cond_0
    return-void
.end method

.method public final cancel(Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 540
    .line 542
    monitor-enter p0

    .line 543
    :try_start_0
    iget v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 583
    :goto_0
    if-eqz v1, :cond_0

    .line 584
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->l:Z

    .line 586
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 587
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->c:Lcom/twitter/internal/android/service/m;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->c:Lcom/twitter/internal/android/service/m;

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/m;->run()V

    .line 594
    :cond_1
    return v1

    .line 549
    :pswitch_0
    const/4 v2, 0x5

    :try_start_1
    iput v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    goto :goto_0

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 559
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->g:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_2

    .line 560
    iget-object v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->g:Ljava/util/concurrent/Future;

    invoke-interface {v2, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 562
    :cond_2
    const/4 v2, 0x5

    iput v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    goto :goto_0

    .line 571
    :pswitch_2
    const/4 v0, 0x5

    iput v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 572
    goto :goto_0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 330
    monitor-enter p0

    .line 331
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    iget-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->i:Lcom/twitter/internal/android/service/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->i:Lcom/twitter/internal/android/service/ab;

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x6

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 350
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 351
    monitor-enter p0

    .line 352
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    :try_start_0
    iget v4, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    if-eq v4, v6, :cond_0

    .line 353
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 355
    sub-long/2addr v0, v4

    .line 356
    goto :goto_0

    .line 357
    :cond_0
    iget v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    if-eq v0, v6, :cond_1

    .line 358
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v1, "Get async operation result timed out"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    iget-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->i:Lcom/twitter/internal/android/service/ab;

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/ab;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->j:I

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 2

    .prologue
    .line 377
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected j()Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->k:Lcom/twitter/internal/android/service/AsyncOperation$ExecutionClass;

    return-object v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 231
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->c:Lcom/twitter/internal/android/service/m;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->c:Lcom/twitter/internal/android/service/m;

    invoke-virtual {v0}, Lcom/twitter/internal/android/service/m;->run()V

    .line 237
    :cond_0
    return-void

    .line 230
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized l()Lcom/twitter/internal/android/service/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/internal/android/service/ab",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->i:Lcom/twitter/internal/android/service/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()Lcom/twitter/internal/android/service/d;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 293
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/internal/android/service/c;

    invoke-interface {v0, p0}, Lcom/twitter/internal/android/service/c;->b(Lcom/twitter/internal/android/service/AsyncOperation;)V

    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final declared-synchronized p()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 442
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    if-ne v1, v0, :cond_0

    .line 443
    const/4 v1, 0x2

    iput v1, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    .line 444
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized q()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 456
    monitor-enter p0

    .line 457
    :try_start_0
    iget v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    packed-switch v2, :pswitch_data_0

    .line 468
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mark RUNNING. Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 460
    :pswitch_1
    const/4 v2, 0x4

    :try_start_1
    iput v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    move v2, v1

    .line 471
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    if-nez v2, :cond_0

    :goto_1
    monitor-exit p0

    return v0

    :pswitch_2
    move v2, v0

    .line 465
    goto :goto_0

    :cond_0
    move v0, v1

    .line 472
    goto :goto_1

    .line 457
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final declared-synchronized r()V
    .locals 3

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    packed-switch v0, :pswitch_data_0

    .line 515
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mark DONE. Invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 511
    :pswitch_0
    const/4 v0, 0x6

    :try_start_1
    iput v0, p0, Lcom/twitter/internal/android/service/AsyncOperation;->h:I

    .line 518
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
