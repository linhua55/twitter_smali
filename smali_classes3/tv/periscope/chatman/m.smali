.class Ltv/periscope/chatman/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/squareup/okhttp/ws/WebSocketListener;


# instance fields
.field final synthetic a:Ltv/periscope/chatman/i;


# direct methods
.method constructor <init>(Ltv/periscope/chatman/i;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 322
    const-string/jumbo v0, "CM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onclose code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ws="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-static {v2}, Ltv/periscope/chatman/i;->g(Ltv/periscope/chatman/i;)Lcom/squareup/okhttp/ws/WebSocket;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldog;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-static {v0}, Ltv/periscope/chatman/i;->g(Ltv/periscope/chatman/i;)Lcom/squareup/okhttp/ws/WebSocket;

    move-result-object v0

    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltv/periscope/chatman/i;->a(Ltv/periscope/chatman/i;Lcom/squareup/okhttp/ws/WebSocket;)Lcom/squareup/okhttp/ws/WebSocket;

    .line 329
    iget-object v0, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-static {v0}, Ltv/periscope/chatman/i;->d(Ltv/periscope/chatman/i;)Ltv/periscope/chatman/g;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/periscope/chatman/g;->a(I)V

    goto :goto_0
.end method

.method public onFailure(Ljava/io/IOException;Lcom/squareup/okhttp/Response;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 334
    const-string/jumbo v0, "CM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "socket i/o failure, ws="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-static {v2}, Ltv/periscope/chatman/i;->g(Ltv/periscope/chatman/i;)Lcom/squareup/okhttp/ws/WebSocket;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ldog;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    iget-object v0, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-static {v0}, Ltv/periscope/chatman/i;->e(Ltv/periscope/chatman/i;)Ltv/periscope/chatman/k;

    move-result-object v0

    .line 338
    iget-object v1, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-static {v1, v3}, Ltv/periscope/chatman/i;->a(Ltv/periscope/chatman/i;Ltv/periscope/chatman/k;)Ltv/periscope/chatman/k;

    .line 339
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0, p1}, Ltv/periscope/chatman/k;->a(Ljava/lang/Throwable;)V

    .line 343
    :cond_0
    iget-object v0, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-static {v0}, Ltv/periscope/chatman/i;->g(Ltv/periscope/chatman/i;)Lcom/squareup/okhttp/ws/WebSocket;

    move-result-object v0

    if-nez v0, :cond_1

    .line 355
    :goto_0
    return-void

    .line 347
    :cond_1
    if-eqz p2, :cond_2

    .line 348
    const-string/jumbo v0, "CM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connection Failed {Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/squareup/okhttp/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Ldog;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    :goto_1
    iget-object v0, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-static {v0, v3}, Ltv/periscope/chatman/i;->a(Ltv/periscope/chatman/i;Lcom/squareup/okhttp/ws/WebSocket;)Lcom/squareup/okhttp/ws/WebSocket;

    .line 354
    iget-object v0, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-static {v0}, Ltv/periscope/chatman/i;->d(Ltv/periscope/chatman/i;)Ltv/periscope/chatman/g;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-interface {v0, v1}, Ltv/periscope/chatman/g;->a(Ltv/periscope/chatman/f;)V

    goto :goto_0

    .line 350
    :cond_2
    const-string/jumbo v0, "CM"

    const-string/jumbo v1, "Connection Failed"

    invoke-static {v0, v1, p1}, Ldog;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onMessage(Lcom/squareup/okhttp/ResponseBody;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->contentType()Lcom/squareup/okhttp/MediaType;

    move-result-object v0

    .line 286
    const-string/jumbo v1, "CM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :try_start_0
    sget-object v1, Lcom/squareup/okhttp/ws/WebSocket;->TEXT:Lcom/squareup/okhttp/MediaType;

    if-eq v0, v1, :cond_0

    .line 289
    const-string/jumbo v0, "CM"

    const-string/jumbo v1, "unexpected binary message"

    invoke-static {v0, v1}, Ldog;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unexpected binary message"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->close()V

    throw v0

    .line 292
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->source()Lokio/j;

    move-result-object v0

    invoke-interface {v0}, Lokio/j;->r()Ljava/lang/String;

    move-result-object v1

    .line 293
    const-string/jumbo v0, "CM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "message payload "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    :try_start_2
    sget-object v0, Ldob;->a:Lcom/google/gson/d;

    const-class v2, Ltv/periscope/chatman/api/WireMessage;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/d;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/chatman/api/WireMessage;

    .line 296
    iget-object v2, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-static {v2}, Ltv/periscope/chatman/i;->d(Ltv/periscope/chatman/i;)Ltv/periscope/chatman/g;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ltv/periscope/chatman/g;->a(Ltv/periscope/chatman/api/WireMessage;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->close()V

    .line 303
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    :try_start_3
    const-string/jumbo v1, "CM"

    const-string/jumbo v2, "decode message error"

    invoke-static {v1, v2, v0}, Ldog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onOpen(Lcom/squareup/okhttp/ws/WebSocket;Lcom/squareup/okhttp/Response;)V
    .locals 3

    .prologue
    .line 275
    const-string/jumbo v0, "CM"

    const-string/jumbo v1, "websocket opened"

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-static {v0, p1}, Ltv/periscope/chatman/i;->a(Ltv/periscope/chatman/i;Lcom/squareup/okhttp/ws/WebSocket;)Lcom/squareup/okhttp/ws/WebSocket;

    .line 278
    iget-object v0, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-static {v0}, Ltv/periscope/chatman/i;->e(Ltv/periscope/chatman/i;)Ltv/periscope/chatman/k;

    move-result-object v0

    .line 279
    iget-object v1, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ltv/periscope/chatman/i;->a(Ltv/periscope/chatman/i;Ltv/periscope/chatman/k;)Ltv/periscope/chatman/k;

    .line 280
    invoke-virtual {v0}, Ltv/periscope/chatman/k;->run()V

    .line 281
    return-void
.end method

.method public onPong(Lokio/f;)V
    .locals 6

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    const-string/jumbo v0, "CM"

    const-string/jumbo v1, "unexpected pong with no payload"

    invoke-static {v0, v1}, Ldog;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p1}, Lokio/f;->l()J

    move-result-wide v0

    .line 312
    iget-object v2, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-static {v2}, Ltv/periscope/chatman/i;->f(Ltv/periscope/chatman/i;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 313
    const-string/jumbo v2, "CM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected pong got="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", want="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    invoke-static {v1}, Ltv/periscope/chatman/i;->f(Ltv/periscope/chatman/i;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldog;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_1
    const-string/jumbo v0, "CM"

    const-string/jumbo v1, "<--- pong"

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Ltv/periscope/chatman/m;->a:Ltv/periscope/chatman/i;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ltv/periscope/chatman/i;->a(Ltv/periscope/chatman/i;J)J

    goto :goto_0
.end method
