.class final Ldfx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lokio/aa;


# instance fields
.field final synthetic a:Ldfu;

.field private final b:Lokio/n;

.field private c:Z


# direct methods
.method private constructor <init>(Ldfu;)V
    .locals 2

    .prologue
    .line 304
    iput-object p1, p0, Ldfx;->a:Ldfu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Lokio/n;

    iget-object v1, p0, Ldfx;->a:Ldfu;

    invoke-static {v1}, Ldfu;->a(Ldfu;)Lokio/i;

    move-result-object v1

    invoke-interface {v1}, Lokio/i;->timeout()Lokio/ac;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/n;-><init>(Lokio/ac;)V

    iput-object v0, p0, Ldfx;->b:Lokio/n;

    return-void
.end method

.method synthetic constructor <init>(Ldfu;Ldfv;)V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0, p1}, Ldfx;-><init>(Ldfu;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldfx;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    monitor-exit p0

    return-void

    .line 329
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ldfx;->c:Z

    .line 330
    iget-object v0, p0, Ldfx;->a:Ldfu;

    invoke-static {v0}, Ldfu;->a(Ldfu;)Lokio/i;

    move-result-object v0

    const-string/jumbo v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    .line 331
    iget-object v0, p0, Ldfx;->a:Ldfu;

    iget-object v1, p0, Ldfx;->b:Lokio/n;

    invoke-static {v0, v1}, Ldfu;->a(Ldfu;Lokio/n;)V

    .line 332
    iget-object v0, p0, Ldfx;->a:Ldfu;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ldfu;->a(Ldfu;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldfx;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 325
    :goto_0
    monitor-exit p0

    return-void

    .line 324
    :cond_0
    :try_start_1
    iget-object v0, p0, Ldfx;->a:Ldfu;

    invoke-static {v0}, Ldfu;->a(Ldfu;)Lokio/i;

    move-result-object v0

    invoke-interface {v0}, Lokio/i;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lokio/ac;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Ldfx;->b:Lokio/n;

    return-object v0
.end method

.method public write(Lokio/f;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    iget-boolean v0, p0, Ldfx;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 320
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Ldfx;->a:Ldfu;

    invoke-static {v0}, Ldfu;->a(Ldfu;)Lokio/i;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lokio/i;->k(J)Lokio/i;

    .line 317
    iget-object v0, p0, Ldfx;->a:Ldfu;

    invoke-static {v0}, Ldfu;->a(Ldfu;)Lokio/i;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    .line 318
    iget-object v0, p0, Ldfx;->a:Ldfu;

    invoke-static {v0}, Ldfu;->a(Ldfu;)Lokio/i;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/i;->write(Lokio/f;J)V

    .line 319
    iget-object v0, p0, Ldfx;->a:Ldfu;

    invoke-static {v0}, Ldfu;->a(Ldfu;)Lokio/i;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    goto :goto_0
.end method
