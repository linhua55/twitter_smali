.class Ltv/periscope/chatman/i;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/chatman/f;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field private final c:Ltv/periscope/chatman/g;

.field private final d:Ltv/periscope/chatman/m;

.field private final e:Ljava/lang/String;

.field private volatile f:Lcom/squareup/okhttp/ws/WebSocket;

.field private volatile g:Ltv/periscope/chatman/k;

.field private volatile h:Z

.field private volatile i:J

.field private volatile j:Z


# direct methods
.method private constructor <init>(Ltv/periscope/chatman/g;Ltv/periscope/chatman/model/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Ltv/periscope/chatman/i;->c:Ltv/periscope/chatman/g;

    .line 56
    new-instance v0, Ltv/periscope/chatman/m;

    invoke-direct {v0, p0}, Ltv/periscope/chatman/m;-><init>(Ltv/periscope/chatman/i;)V

    iput-object v0, p0, Ltv/periscope/chatman/i;->d:Ltv/periscope/chatman/m;

    .line 57
    invoke-virtual {p2}, Ltv/periscope/chatman/model/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltv/periscope/chatman/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/chatman/i;->a:Ljava/lang/String;

    .line 58
    invoke-virtual {p2}, Ltv/periscope/chatman/model/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/chatman/i;->b:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Ltv/periscope/chatman/i;->e:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic a(Ltv/periscope/chatman/i;J)J
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Ltv/periscope/chatman/i;->i:J

    return-wide p1
.end method

.method static synthetic a(Ltv/periscope/chatman/i;Lcom/squareup/okhttp/ws/WebSocket;)Lcom/squareup/okhttp/ws/WebSocket;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Ltv/periscope/chatman/i;->f:Lcom/squareup/okhttp/ws/WebSocket;

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v0, "127.0.0.1:8088"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo p0, "10.0.2.2:8088"

    .line 75
    :cond_0
    const-string/jumbo v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ws://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "http://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 77
    :cond_1
    const-string/jumbo v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wss://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "https://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ws://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ltv/periscope/chatman/model/a;Ljava/lang/String;Ljava/util/concurrent/Executor;Ltv/periscope/chatman/g;Ljava/lang/String;)Ltv/periscope/chatman/i;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ltv/periscope/chatman/i;

    invoke-direct {v0, p3, p0, p4}, Ltv/periscope/chatman/i;-><init>(Ltv/periscope/chatman/g;Ltv/periscope/chatman/model/a;Ljava/lang/String;)V

    .line 65
    new-instance v1, Ltv/periscope/chatman/l;

    invoke-direct {v1, v0, p1}, Ltv/periscope/chatman/l;-><init>(Ltv/periscope/chatman/i;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 66
    return-object v0
.end method

.method static synthetic a(Ltv/periscope/chatman/i;Ltv/periscope/chatman/k;)Ltv/periscope/chatman/k;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Ltv/periscope/chatman/i;->g:Ltv/periscope/chatman/k;

    return-object p1
.end method

.method static synthetic a(Ltv/periscope/chatman/i;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Ltv/periscope/chatman/i;->j:Z

    return v0
.end method

.method static synthetic a(Ltv/periscope/chatman/i;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Ltv/periscope/chatman/i;->h:Z

    return p1
.end method

.method static synthetic b(Ltv/periscope/chatman/i;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Ltv/periscope/chatman/i;->h:Z

    return v0
.end method

.method static synthetic c(Ltv/periscope/chatman/i;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ltv/periscope/chatman/i;->d()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0xa

    .line 100
    const-string/jumbo v0, "CM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "open ep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/chatman/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Ltv/periscope/chatman/k;

    new-instance v1, Ltv/periscope/chatman/j;

    invoke-direct {v1, p0}, Ltv/periscope/chatman/j;-><init>(Ltv/periscope/chatman/i;)V

    invoke-direct {v0, v1}, Ltv/periscope/chatman/k;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Ltv/periscope/chatman/i;->g:Ltv/periscope/chatman/k;

    .line 109
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 110
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 111
    const-wide/16 v2, 0x3c

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 112
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lcom/squareup/okhttp/OkHttpClient;->setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 113
    new-instance v1, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v1}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltv/periscope/chatman/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/chatapi/v1/chatnow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    const-string/jumbo v2, "User-Agent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ChatMan/1 (Android) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltv/periscope/chatman/i;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-virtual {v1, v2, v3}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v1

    .line 117
    invoke-static {v0, v1}, Lcom/squareup/okhttp/ws/WebSocketCall;->create(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/ws/WebSocketCall;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/chatman/i;->d:Ltv/periscope/chatman/m;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/ws/WebSocketCall;->enqueue(Lcom/squareup/okhttp/ws/WebSocketListener;)V

    .line 118
    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 120
    iget-object v0, p0, Ltv/periscope/chatman/i;->g:Ltv/periscope/chatman/k;

    return-object v0
.end method

.method static synthetic d(Ltv/periscope/chatman/i;)Ltv/periscope/chatman/g;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Ltv/periscope/chatman/i;->c:Ltv/periscope/chatman/g;

    return-object v0
.end method

.method static synthetic e(Ltv/periscope/chatman/i;)Ltv/periscope/chatman/k;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Ltv/periscope/chatman/i;->g:Ltv/periscope/chatman/k;

    return-object v0
.end method

.method static synthetic f(Ltv/periscope/chatman/i;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Ltv/periscope/chatman/i;->i:J

    return-wide v0
.end method

.method static synthetic g(Ltv/periscope/chatman/i;)Lcom/squareup/okhttp/ws/WebSocket;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Ltv/periscope/chatman/i;->f:Lcom/squareup/okhttp/ws/WebSocket;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Ltv/periscope/chatman/i;->f:Lcom/squareup/okhttp/ws/WebSocket;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ping error, socket closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-wide v0, p0, Ltv/periscope/chatman/i;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "no pong for last ping"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 167
    iget-object v2, p0, Ltv/periscope/chatman/i;->f:Lcom/squareup/okhttp/ws/WebSocket;

    new-instance v3, Lokio/f;

    invoke-direct {v3}, Lokio/f;-><init>()V

    invoke-virtual {v3, v0, v1}, Lokio/f;->h(J)Lokio/f;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/ws/WebSocket;->sendPing(Lokio/f;)V

    .line 168
    iput-wide v0, p0, Ltv/periscope/chatman/i;->i:J

    .line 170
    const-string/jumbo v0, "CM"

    const-string/jumbo v1, "---> ping"

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public a(Ltv/periscope/chatman/api/WireMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Ltv/periscope/chatman/i;->f:Lcom/squareup/okhttp/ws/WebSocket;

    .line 143
    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "websocket closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    sget-object v1, Ldob;->a:Lcom/google/gson/d;

    invoke-virtual {v1, p1}, Lcom/google/gson/d;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string/jumbo v2, "CM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send json "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :try_start_0
    sget-object v2, Lcom/squareup/okhttp/ws/WebSocket;->TEXT:Lcom/squareup/okhttp/MediaType;

    invoke-static {v2, v1}, Lcom/squareup/okhttp/RequestBody;->create(Lcom/squareup/okhttp/MediaType;Ljava/lang/String;)Lcom/squareup/okhttp/RequestBody;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/ws/WebSocket;->sendMessage(Lcom/squareup/okhttp/RequestBody;)V

    .line 150
    iget-object v0, p0, Ltv/periscope/chatman/i;->c:Ltv/periscope/chatman/g;

    invoke-interface {v0, p1}, Ltv/periscope/chatman/g;->a(Ltv/periscope/chatman/api/WireMessage;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 153
    const-string/jumbo v0, "CM"

    const-string/jumbo v1, "websocket is closed before sendmessage"

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltv/periscope/chatman/i;->j:Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/periscope/chatman/i;->h:Z

    .line 91
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ltv/periscope/chatman/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Ltv/periscope/chatman/i;->f:Lcom/squareup/okhttp/ws/WebSocket;

    .line 126
    if-nez v0, :cond_0

    .line 127
    const-string/jumbo v0, "CM"

    const-string/jumbo v1, "already closed"

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ltv/periscope/chatman/i;->f:Lcom/squareup/okhttp/ws/WebSocket;

    .line 131
    const-string/jumbo v1, "CM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "close by self ws="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/16 v1, 0x3e8

    :try_start_0
    const-string/jumbo v2, "close by self"

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/ws/WebSocket;->close(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    const-string/jumbo v0, "CM"

    const-string/jumbo v1, "the underlying websocket is already closed"

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
