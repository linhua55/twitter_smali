.class final Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lokio/aa;


# instance fields
.field private closed:Z

.field final synthetic this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

.field private final timeout:Lokio/n;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/Http1xStream;)V
    .locals 2

    .prologue
    .line 311
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Lokio/n;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;
    invoke-static {v1}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$300(Lcom/squareup/okhttp/internal/http/Http1xStream;)Lokio/i;

    move-result-object v1

    invoke-interface {v1}, Lokio/i;->timeout()Lokio/ac;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/n;-><init>(Lokio/ac;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->timeout:Lokio/n;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/http/Http1xStream;Lcom/squareup/okhttp/internal/http/Http1xStream$1;)V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;-><init>(Lcom/squareup/okhttp/internal/http/Http1xStream;)V

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
    .line 335
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    monitor-exit p0

    return-void

    .line 336
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->closed:Z

    .line 337
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$300(Lcom/squareup/okhttp/internal/http/Http1xStream;)Lokio/i;

    move-result-object v0

    const-string/jumbo v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    .line 338
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->timeout:Lokio/n;

    # invokes: Lcom/squareup/okhttp/internal/http/Http1xStream;->detachTimeout(Lokio/n;)V
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$400(Lcom/squareup/okhttp/internal/http/Http1xStream;Lokio/n;)V

    .line 339
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    const/4 v1, 0x3

    # setter for: Lcom/squareup/okhttp/internal/http/Http1xStream;->state:I
    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$502(Lcom/squareup/okhttp/internal/http/Http1xStream;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 335
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
    .line 330
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 332
    :goto_0
    monitor-exit p0

    return-void

    .line 331
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$300(Lcom/squareup/okhttp/internal/http/Http1xStream;)Lokio/i;

    move-result-object v0

    invoke-interface {v0}, Lokio/i;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lokio/ac;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->timeout:Lokio/n;

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
    .line 320
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 327
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$300(Lcom/squareup/okhttp/internal/http/Http1xStream;)Lokio/i;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lokio/i;->k(J)Lokio/i;

    .line 324
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$300(Lcom/squareup/okhttp/internal/http/Http1xStream;)Lokio/i;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    .line 325
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$300(Lcom/squareup/okhttp/internal/http/Http1xStream;)Lokio/i;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lokio/i;->write(Lokio/f;J)V

    .line 326
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/Http1xStream$ChunkedSink;->this$0:Lcom/squareup/okhttp/internal/http/Http1xStream;

    # getter for: Lcom/squareup/okhttp/internal/http/Http1xStream;->sink:Lokio/i;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/Http1xStream;->access$300(Lcom/squareup/okhttp/internal/http/Http1xStream;)Lokio/i;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lokio/i;->b(Ljava/lang/String;)Lokio/i;

    goto :goto_0
.end method
